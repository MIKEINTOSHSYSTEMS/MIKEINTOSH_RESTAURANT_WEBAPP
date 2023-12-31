@extends('front.layout')

@section('content')
    <!--====== PAGE TITLE PART START ======-->

    <section class="page-title-area d-flex align-items-center lazy" data-bg="{{asset('assets/front/img/'.$bs->breadcrumb)}}">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-title-item text-center">
                        <h2 class="title">{{convertUtf8($bs->team_title)}}</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('front.index')}}"><i class="flaticon-home"></i>{{__('Home')}}</a></li>
                                <li class="breadcrumb-item active" aria-current="page">{{convertUtf8($bs->team_title)}}</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--====== PAGE TITLE PART ENDS ======-->



    <!--====== TEAM PART START ======-->

    <section class="team-area team-page">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-4">
                    <div class="section-title text-center">
                        <span>{{convertUtf8($bs->team_section_title)}} <img class="lazy" data-src="{{asset('assets/front/img/title-icon.png')}}" alt=""></span>
                        <h3 class="title">{{convertUtf8($bs->team_section_subtitle)}}</h3>
                    </div>
                </div>
            </div>
            <div class="row justify-content-start">
                @foreach ($members as $item)
                <div class="col-lg-4 col-md-7 col-sm-9">
                    <div class="single-team mt-30">
                        <div class="team-thumb">
                            <img class="lazy wow fadeIn" data-src="{{asset('assets/front/img/members/'.$item->image)}}" alt="team" data-wow-delay=".5s">
                            <div class="team-overlay">
                                <div class="link">
                                    <a><i class="flaticon-add"></i></a>
                                </div>
                                <div class="social">
                                    <ul>
                                        @if($item->facebook)
                                        <li><a href="{{$item->facebook}}" target="_bank"><i class="flaticon-facebook"></i></a></li>
                                        @endif
                                        @if($item->twitter)
                                        <li><a href="{{$item->twitter}}" target="_bank"><i class="flaticon-twitter"></i></a></li>
                                        @endif
                                        @if($item->instagram)
                                        <li><a href="{{$item->instagram}}" target="_bank"><i class="flaticon-instagram"></i></a></li>
                                        @endif
                                        @if($item->linkedin)
                                        <li><a href="{{$item->linkedin}}" target="_bank"><i class="flaticon-linkedin"></i></a></li>
                                        @endif
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="team-content text-center">
                            <h4 class="title">{{convertUtf8($item->name)}}</h4>
                            <span>{{convertUtf8($item->rank)}}</span>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>

    <!--====== TEAM PART ENDS ======-->
@endsection
