<?php

namespace App\Http\Controllers\Admin;

use Validator;
use App\Models\Language;
use App\Models\Pcategory;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;

class ProductCategory extends Controller
{
    public function index(Request $request)
    {
        $lang = Language::where('code', $request->language)->first();
        $lang_id = $lang->id;
        $data['pcategories'] = Pcategory::where('language_id', $lang_id)->orderBy('id', 'DESC')->paginate(10);
        $data['lang_id'] = $lang_id;
        return view('admin.product.category.index', $data);
    }
    public function store(Request $request)
    {
        $messages = [
            'language_id.required' => 'The language field is required'
        ];

        $rules = [
            'language_id' => 'required',
            'name' => 'required|max:255',
            'status' => 'required',
            'tax' => 'nullable|numeric',
        ];

        $validator = Validator::make($request->all(), $rules, $messages);
        if ($validator->fails()) {
            $errmsgs = $validator->getMessageBag()->add('error', 'true');
            return response()->json($validator->errors());
        }


        $data = new Pcategory;
        $input = $request->all();

        $in = $request->all();

        if ($request->hasFile('image')) {
            $image = $request->image;
            $name =  uniqid() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('assets/front/img/category/'), $name);
            $input['image'] = $name;
        }

        $input['slug'] =  make_slug($request->name);
        $input['tax'] =  empty($request->tax) ? 0.00 : $request->tax;
        $data->create($input);

        Session::flash('success', 'Category added successfully!');
        return "success";
    }
    public function edit($id)
    {
        $data = Pcategory::findOrFail($id);
        return view('admin.product.category.edit', compact('data'));
    }
    public function update(Request $request)
    {
        $rules = [
            'name' => 'required|max:255',
            'tax' => 'nullable|numeric',
        ];

        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            $errmsgs = $validator->getMessageBag()->add('error', 'true');
            return response()->json($validator->errors());
        }
        $data = Pcategory::findOrFail($request->category_id);
        $input = $request->all();
        if ($request->hasFile('image')) {
            @unlink(public_path('assets/front/img/category/' . $data->image));
            $image = $request->image;
            $name =  uniqid() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('assets/front/img/category/'), $name);
            $input['image'] = $name;
        }

        $input['slug'] =  make_slug($request->name);
        $input['tax'] =  empty($request->tax) ? 0.00 : $request->tax;
        $data->update($input);

        Session::flash('success', 'Category Update successfully!');
        return "success";
    }
    public function delete(Request $request)
    {
        $category = Pcategory::findOrFail($request->category_id);
        if ($category->products()->count() > 0) {
            Session::flash('warning', 'First, delete all the product under the selected categories!');
            return back();
        }
        @unlink(public_path('assets/front/img/category/' . $category->image));
        $category->delete();

        Session::flash('success', 'Category deleted successfully!');
        return back();
    }
    public function bulkDelete(Request $request)
    {
        $ids = $request->ids;

        foreach ($ids as $id) {
            $pcategory = Pcategory::findOrFail($id);
            if ($pcategory->products()->count() > 0) {
                Session::flash('warning', 'First, delete all the product under the selected categories!');
                return "success";
            }
        }

        foreach ($ids as $id) {
            $pcategory = Pcategory::findOrFail($id);
            @unlink(public_path('assets/front/img/category/' . $pcategory->image));
            $pcategory->delete();
        }

        Session::flash('success', 'product categories deleted successfully!');
        return "success";
    }
    public function FeatureCheck(Request $request)
    {
        $id = $request->pcategory_id;
        $value = $request->feature;

        $pcategory = Pcategory::findOrFail($id);
        $pcategory->is_feature = $value;
        $pcategory->save();

        Session::flash('success', 'Product category updated successfully!');
        return back();
    }
    public function removeImage(Request $request)
    {
        $type = $request->type;
        $pcatid = $request->pcategory_id;

        $pcategory = Pcategory::findOrFail($pcatid);

        if ($type == "pcategory") {
            @unlink(public_path("assets/front/img/category/" . $pcategory->image));
            $pcategory->image = NULL;
            $pcategory->save();
        }

        $request->session()->flash('success', 'Image removed successfully!');
        return "success";
    }
    public function getCategories($id)
    {
        if (!is_null($id)) {
            $categories = Pcategory::where('language_id', $id)
                ->where('status', 1)
                ->orderBy('name', 'asc')
                ->get();
            return response()->json(['successData' => $categories]);
        } else {
            return response()->json(['errorData' => 'Sorry, an error has occurred!'], 400);
        }
    }
}
