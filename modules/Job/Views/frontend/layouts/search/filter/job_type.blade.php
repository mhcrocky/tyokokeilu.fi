@php
    $selected = (array) Request::query('job_type');
@endphp
<div class="g-filter-item">
    <div class="item-title">
        <h3> Filter by type </h3>
        <i class="fa fa-search" aria-hidden="true"></i>
    </div>
    <div class="item-content">
        <ul>
            <li>
                <div class="bravo-checkbox">
                    <label>
                        <input @if(in_array('Practice',$selected)) checked @endif type="checkbox" name="job_type[]" value="{{'Practice'}}"> 
                        Practice
                        <span class="checkmark"></span>
                    </label>
                </div>
            </li>
            <li>
                <div class="bravo-checkbox">
                    <label>
                        <input @if(in_array('Internship',$selected)) checked @endif type="checkbox" name="job_type[]" value="{{'Internship'}}"> 
                        Internship
                        <span class="checkmark"></span>
                    </label>
                </div>
            </li>
            <li>
                <div class="bravo-checkbox">
                    <label>
                        <input @if(in_array('SummerJob',$selected)) checked @endif type="checkbox" name="job_type[]" value="{{'SummerJob'}}">
                        Summer Job
                        <span class="checkmark"></span>
                    </label>
                </div>
            </li>
        </ul>
    </div>
</div>