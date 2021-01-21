@php
    $selected = (array) Request::query('type');
@endphp
<div class="g-filter-item">
    <div class="item-title">
        <h3> Filter by type </h3>
        <i class="fa fa-angle-up" aria-hidden="true"></i>
    </div>
    <div class="item-content">
        <ul>
            <li>
                <div class="bravo-checkbox">
                    <label>
                        <input @if(in_array('practice',$selected)) checked @endif type="checkbox" name="type[]" value="{{'practice'}}"> 
                        Practice
                        <span class="checkmark"></span>
                    </label>
                </div>
            </li>
            <li>
                <div class="bravo-checkbox">
                    <label>
                        <input @if(in_array('intership',$selected)) checked @endif type="checkbox" name="type[]" value="{{'intership'}}"> 
                        Intership
                        <span class="checkmark"></span>
                    </label>
                </div>
            </li>
            <li>
                <div class="bravo-checkbox">
                    <label>
                        <input @if(in_array('SummerJob',$selected)) checked @endif type="checkbox" name="type[]" value="{{'SummerJob'}}">
                        Summer Job
                        <span class="checkmark"></span>
                    </label>
                </div>
            </li>
        </ul>
    </div>
</div>