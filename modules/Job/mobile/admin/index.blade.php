@extends('admin.layouts.app')
@section('content')
    <div class="container-fluid">
        <div class="d-flex mb20">
            <h1 class="title-bar">{{!empty($recovery) ? __('Recovery') : __("All Jobs")}}</h1>
            <div class="title-actions ml-2">
                @if(empty($recovery))
                <a href="{{route('job.admin.create')}}" class="btn btn-sm">{{__("+ Add new Job")}}</a>
                @endif
            </div>
        </div>
        @include('admin.message')
        <div class="filter-div d-flex justify-content-between ">
            <div class="col-left">
                @if(!empty($rows))
                    <form method="post" action="{{route('job.admin.bulkEdit')}}" class="filter-form filter-form-left d-flex justify-content-start">
                        {{csrf_field()}}
                        <select name="action" class="form-control">
                            <option value="">{{__(" Bulk Actions ")}}</option>
                            <option value="publish">{{__(" Publish ")}}</option>
                            <option value="draft">{{__(" Move to Draft ")}}</option>
                            <option value="pending">{{__("Move to Pending")}}</option>
                            {{--<option value="clone">{{__(" Clone ")}}</option>--}}
                            @if(!empty($recovery))
                                <option value="recovery">{{__(" Recovery ")}}</option>
                            @else
                                <option value="delete">{{__(" Delete ")}}</option>
                            @endif
                        </select>
                        <button data-confirm="{{__("Do you want to delete?")}}" class="btn-danger btn btn-icon dungdt-apply-form-btn" type="button">{{__('Apply')}}</button>
                    </form>
                @endif
            </div>
            <div class="col-left">
                <form method="get" action="{{ !empty($recovery) ? route('job.admin.recovery') : route('job.admin.index')}} " class="filter-form filter-form-right d-flex justify-content-end flex-column flex-sm-row" role="search">
                    @if(!empty($rows) and $job_manage_others)
                        <?php
                        $user = !empty(Request()->vendor_id) ? App\User::find(Request()->vendor_id) : false;
                        \App\Helpers\AdminForm::select2('vendor_id', [
                            'configs' => [
                                'ajax'        => [
                                    'url'      => url('/admin/module/user/getForSelect2'),
                                    'dataType' => 'json',
                                    'data' => array("user_type"=>"vendor")
                                ],
                                'allowClear'  => true,
                                'placeholder' => __('-- Vendor --')
                            ]
                        ], !empty($user->id) ? [
                            $user->id,
                            $user->name_or_email . ' (#' . $user->id . ')'
                        ] : false)
                        ?>
                    @endif
                    <input type="text" name="s" value="{{ Request()->s }}" placeholder="{{__('Search by name')}}" class="form-control">
                    <button class="btn-danger btn btn-icon btn_search" type="submit">{{__('Search')}}</button>
                </form>
            </div>
        </div>
        <div class="text-right">
            <p><i>{{__('Found :total items',['total'=>$rows->total()])}}</i></p>
        </div>
        <div class="panel border shadow">
            <div class="panel-body">
                <form action="" class="bravo-form-item">
                    <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th width="60px"><input type="checkbox" class="check-all"></th>
                            <th> {{ __('Name')}}</th>
                            <th width="200px"> {{ __('Location')}}</th>
                            <th width="130px"> {{ __('Author')}}</th>
                            <th width="100px"> {{ __('Status')}}</th>
                            <th width="100px"> {{ __('Date')}}</th>
                            <th width="100px"> {{ __('Edit')}}</th>
                        </tr>
                        </thead>
                        <tbody>
                        @if($rows->total() > 0)
                            @foreach($rows as $row)
                                <tr class="{{$row->status}}">
                                    <td><input type="checkbox" name="ids[]" class="check-item" value="{{$row->id}}">
                                    </td>
                                    <td class="title">
                                        <a href="{{route('job.admin.edit',['id'=>$row->id])}}">{{$row->title}}</a>
                                    </td>
                                    <td>{{$row->location->name ?? ''}}</td>
                                    <td class="text-nowrap">
                                        @if(!empty($row->author))
                                        <span class="user-avatar-table flex-shrink-0">
                                            @if($row->author->getAvatarUrl())
                                                <img class="image-responsive image-avatar" src="{{$row->author->getAvatarUrl()}}" alt="{{$row->author->getDisplayName()}}">
                                            @else
                                                <span class="avatar-text">{{ucfirst($row->author->getDisplayName()[0])}}</span>
                                            @endif         
                                            {{$row->author->getDisplayName()}}
                                        </span>                                   
                                        @else
                                            {{__("[Author Deleted]")}}
                                        @endif
                                    </td>
                                    <td>{{ $row->status }}</td>
                                    <td  class="text-nowrap">{{ display_job_start_date($row->created_at)}}</td>
                                    <td>
                                        <div class="dropdown">
                                            <button class="btn btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                ...
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="{{route('job.admin.edit',['id'=>$row->id])}}">{{__("Edit Job")}}</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        @else
                            <tr>
                                <td colspan="7">{{__("No Job found")}}</td>
                            </tr>
                        @endif
                        </tbody>
                    </table>
                    </div>
                </form>
                {{$rows->appends(request()->query())->links()}}
            </div>
        </div>
    </div>
<style>
.user-avatar-table>.avatar-text{
    width: 30px;
    border-radius: 50%;
    text-align: center;
    background: #e67e22;
    color: #fff;
    font-size: 17px;
    display: inline-block;
    height: 32px;
    line-height: 32px;
}
</style>
@endsection
