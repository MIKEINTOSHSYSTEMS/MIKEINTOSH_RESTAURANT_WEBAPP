<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BasicExtended;
use App\Models\Language;
use Validator;
use Session;

class HerosectionController extends Controller
{
    public function imgtext(Request $request)
    {

        $lang = Language::where('code', $request->language)->firstOrFail();
        $data['lang_id'] = $lang->id;
        $data['abe'] = $lang->basic_extended;


        return view('admin.home.hero.img-text', $data);
    }

    public function update(Request $request, $langid)
    {


        $currentLang = Language::find($langid);
        $bs = $currentLang->basic_setting;
        $activeTheme = $bs->theme;

        $lang_id = $currentLang->id;



        $heroImg = $request->file('hero_image');
        $sideImg = $request->file('side_image');
        $shapeImg = $request->file('shape_image');
        $bottomImg = $request->file('bottom_image');

        $authorImg = $request->file('author_image');


        $allowedExts = array('jpg', 'png', 'jpeg');

        $rules = [
            'hero_image' => [
                function ($attribute, $value, $fail) use ($request, $heroImg, $allowedExts) {
                    if ($request->hasFile('hero_image')) {
                        $ext = $heroImg->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg image is allowed");
                        }
                    }
                },
            ],
            'side_image' => [
                function ($attribute, $value, $fail) use ($request, $sideImg, $allowedExts) {
                    if ($request->hasFile('side_image')) {
                        $ext = $sideImg->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg image is allowed");
                        }
                    }
                },
            ],
            'shape_image' => [
                function ($attribute, $value, $fail) use ($request, $shapeImg, $allowedExts) {
                    if ($request->hasFile('shape_image')) {
                        $ext = $shapeImg->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg image is allowed");
                        }
                    }
                },
            ],
            'bottom_image' => [
                function ($attribute, $value, $fail) use ($request, $bottomImg, $allowedExts) {
                    if ($request->hasFile('bottom_image')) {
                        $ext = $bottomImg->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg image is allowed");
                        }
                    }
                },
            ],
            'author_image' => [
                function ($attribute, $value, $fail) use ($request, $authorImg, $allowedExts) {
                    if ($request->hasFile('author_image')) {

                        $ext = $authorImg->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg image is allowed");
                        }
                    }
                },
            ],

            'hero_section_bold_text' => 'nullable|max:255',
            'hero_section_bold_text_font_size' => 'required|numeric|digits_between:1,3',
            'hero_section_bold_text_color' => 'nullable|max:20',

            'hero_section_text' => 'nullable|max:255',
            'hero_section_text_color' => 'nullable|max:20',

            'hero_section_button_text' => 'nullable|max:30',
            'hero_section_button_text_font_size' => 'required|numeric|digits_between:1,3',
            'hero_section_button_color' => 'nullable|max:20',
            'hero_section_button_url' => 'nullable',



            'hero_section_button2_text' => 'nullable|max:30',
            // 'hero_section_button2_text_font_size' => 'required|numeric|digits_between:1,3',
            'hero_section_button2_url' => 'nullable',


            //bakery
            'hero_section_person_designation' => 'nullable|max:30',
            'hero_section__person_name' => 'nullable|max:30',
            'hero_section_button2_url' => 'nullable',

            //beverage 
            'hero_section_background_text' => 'nullable|max:191'


        ];

        if ($activeTheme == 'pizza' || $activeTheme == 'coffee'  || $activeTheme == 'multipurpose' || $activeTheme == 'grocery' || $activeTheme == 'medicine') {

            $rules['hero_section_button2_text_font_size'] = 'required|numeric|digits_between:1,3';
        }

        if($request->hero_section_background_text){
            $rules['hero_section_background_text_font_size'] = 'required|numeric|digits_between:1,3';
        }

        if ($activeTheme == 'multipurpose' || $activeTheme == 'pizza' || $activeTheme == 'grocery' || $activeTheme == 'medicine' || $activeTheme == 'coffee' || $activeTheme == 'bakery') {
            $rules['hero_section_text_font_size'] =  'required|numeric|digits_between:1,3';
        }




        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            $validator->getMessageBag()->add('error', 'true');
            return response()->json($validator->errors());
        }

        $be = BasicExtended::where('language_id', $langid)->firstOrFail();
        $be->hero_section_bold_text = $request->hero_section_bold_text;
        $be->hero_section_bold_text_font_size = $request->hero_section_bold_text_font_size;
        $be->hero_section_bold_text_color = $request->hero_section_bold_text_color;

        if ($activeTheme == 'multipurpose' || $activeTheme == 'pizza' || $activeTheme == 'grocery' || $activeTheme == 'medicine' || $activeTheme == 'coffee' || $activeTheme == 'bakery') {
            $be->hero_section_text = $request->hero_section_text;
            $be->hero_section_text_font_size = $request->hero_section_text_font_size;
            $be->hero_section_text_color = $request->hero_section_text_color;
        }

        $be->hero_section_button_text = $request->hero_section_button_text;
        $be->hero_section_button_text_font_size = $request->hero_section_button_text_font_size;
        $be->hero_section_button_color = $request->hero_section_button_color;
        $be->hero_section_button_url = $request->hero_section_button_url;

        if ($activeTheme == 'pizza' || $activeTheme == 'coffee' || $activeTheme == 'multipurpose' || $activeTheme == 'grocery' || $activeTheme == 'medicine') {
            $be->hero_section_button2_text = $request->hero_section_button2_text;
            $be->hero_section_button2_text_font_size = $request->hero_section_button2_text_font_size;
            $be->hero_section_button2_url = $request->hero_section_button2_url;
            $be->hero_section_button_two_color = $request->hero_section_button_two_color;
        }

        if ($activeTheme == 'beverage') {

            $be->hero_section_water_shape_text = $request->hero_section_background_text;
            $be->hero_section_water_shape_text_font_size = $request->hero_section_background_text_font_size;
            
        }

        if ($activeTheme == 'bakery') {
            $be->hero_section_author_name = $request->hero_section_author_name;
            $be->hero_section_author_designation = $request->hero_section_author_designation;
        }






        if ($request->hasFile('hero_image')) {
            @unlink(public_path('assets/front/img/' . $be->hero_bg));
            $filename = uniqid() . '.' . $heroImg->getClientOriginalExtension();
            $heroImg->move(public_path('assets/front/img/'), $filename);
            $be->hero_bg = $filename;
        }

        if ($request->hasFile('side_image')) {
            @unlink(public_path('assets/front/img/' . $be->hero_side_img));
            $filename = uniqid() . '.' . $sideImg->getClientOriginalExtension();
            $sideImg->move(public_path('assets/front/img/'), $filename);
            $be->hero_side_img = $filename;
        }

        if ($request->hasFile('shape_image')) {
            @unlink(public_path('assets/front/img/' . $be->hero_shape_img));
            $filename = uniqid() . '.' . $shapeImg->getClientOriginalExtension();
            $shapeImg->move(public_path('assets/front/img/'), $filename);
            $be->hero_shape_img = $filename;
        }

        if ($request->hasFile('bottom_image')) {
            @unlink(public_path('assets/front/img/' . $be->hero_bottom_img));
            $filename = uniqid() . '.' . $bottomImg->getClientOriginalExtension();
            $bottomImg->move(public_path('assets/front/img/'), $filename);
            $be->hero_bottom_img = $filename;
        }

        if ($request->hasFile('author_image')) {
            @unlink(public_path('assets/front/img/' . $be->hero_section_author_image));
            $filename = uniqid() . '.' . $authorImg->getClientOriginalExtension();
            $authorImg->move(public_path('assets/front/img/'), $filename);
            $be->hero_section_author_image = $filename;
        }


        $be->save();

        Session::flash('success', 'Hero Section updated successfully!');
        return "success";
    }

    public function removeImage(Request $request)
    {
        $type = $request->type;
        $langid = $request->language_id;

        $be = BasicExtended::where('language_id', $langid)->firstOrFail();

        if ($type == "background") {
            @unlink(public_path("assets/front/img/" . $be->hero_bg));
            $be->hero_bg = NULL;
            $be->save();
        }

        if ($type == "side") {
            @unlink(public_path("assets/front/img/" . $be->hero_side_img));
            $be->hero_side_img = NULL;
            $be->save();
        }

        if ($type == "shape") {
            @unlink(public_path("assets/front/img/" . $be->hero_shape_img));
            $be->hero_shape_img = NULL;
            $be->save();
        }
        if ($type == "author") {
            @unlink(public_path("assets/front/img/" . $be->hero_section_author_image));
            $be->hero_section_author_image = NULL;
            $be->save();
        }

        if ($type == "bottom") {
            @unlink(public_path("assets/front/img/" . $be->hero_bottom_img));
            $be->hero_bottom_img = NULL;
            $be->save();
        }

        $request->session()->flash('success', 'Image removed successfully!');
        return "success";
    }

    public function video(Request $request)
    {
        $data['abe'] = BasicExtended::first();

        return view('admin.home.hero.video', $data);
    }

    public function videoupdate(Request $request)
    {
        $rules = [
            'video_link' => 'required|max:255',
        ];

        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            $errmsgs = $validator->getMessageBag()->add('error', 'true');
            return response()->json($validator->errors());
        }
        $bes = BasicExtended::all();

        $videoLink = $request->video_link;
        if (strpos($videoLink, "&") != false) {
            $videoLink = substr($videoLink, 0, strpos($videoLink, "&"));
        }

        foreach ($bes as $key => $be) {
            # code...
            $be->hero_section_video_link = $videoLink;
            $be->save();
        }

        Session::flash('success', 'Informations updated successfully!');
        return "success";
    }
}
