@php
    use \modules\Job\Models\Job;
    $selected = (array) Request::query('job_type');
@endphp
<div class="g-filter-item">
    <div class="item-title">
        <input type="text" class="search" placeholder="Job Types">
    </div>
    <div class="item-content">
        <ul>
            <li>
                <div class="bravo-checkbox">
                    <label>
                        <input @if(in_array('Practice',$selected)) checked @endif type="checkbox" name="job_type[]" value="{{'Practice'}}"> 
                        Practice
                        <span class="checkmark"></span>
                        <span class="badge badge-primary">{{Job::getCount('Practice')}}</span>
                    </label>
                </div>
            </li>
            <li>
                <div class="bravo-checkbox">
                    <label>
                        <input @if(in_array('Internship',$selected)) checked @endif type="checkbox" name="job_type[]" value="{{'Internship'}}"> 
                        Internship
                        <span class="checkmark"></span>
                        <span class="badge badge-primary">{{Job::getCount('Internship')}}</span>
                    </label>
                </div>
            </li>
            <li>
                <div class="bravo-checkbox">
                    <label>
                        <input @if(in_array('SummerJob',$selected)) checked @endif type="checkbox" name="job_type[]" value="{{'SummerJob'}}">
                        Summer Job
                        <span class="checkmark"></span>
                        <span class="badge badge-primary">{{Job::getCount('SummerJob')}}</span>
                    </label>
                </div>
            </li>
        </ul>
    </div>
</div>