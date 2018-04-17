<!-- CONTROL HEIGHT SIZING -->
<div class="panel panel-default" style="background-color:DarkOliveGreen; margin-bottom:0px">
  {{-- <div class="panel-heading">
    <h4>Control Height Sizing</h4>
  </div> --}}
  <div class="panel-body">
    <div class="form-horizontal">

      <form  method="GET" action="{{ url('my-filter') }}">
 {{-- value="{{ old('distancemin', $posts->my_distancemin) }}" --}}
      {{-- <div class="form-group"> --}}
      {{-- <label for="exampleInputFile" class="col-md-1 control-label">от МКАД</label> --}}
      <div class="col-md-1">
        <input name="distancemin" style="border-color: maroon" class="form-control input-sm" type="text" value="{{ old('distancemin', $my_distancemin) }}" placeholder="МКАД min">
      </div>
      <div class="col-md-1">
        <input name="distancemax" style="border-color: maroon" class="form-control input-sm" type="text" value="{{ old('distancemax', $my_distancemax) }}" placeholder="МКАД max">
      </div>
      {{-- <label for="exampleInputFile" class="col-md-1 control-label">S дома</label> --}}
      <div class="col-md-1">
        <input name="houseareamin" style="border-color: khaki" class="form-control input-sm" type="text" value="{{ old('houseareamin', $my_houseareamin) }}" placeholder="S дома min">
      </div>
      <div class="col-md-1">
        <input name="houseareamax" style="border-color: khaki" class="form-control input-sm" type="text" value="{{ old('houseareamax', $my_houseareamax) }}" placeholder="S дома max">
      </div>
      {{-- <label for="exampleInputFile" class="col-md-1 control-label">S участка</label> --}}
      <div class="col-md-1">
        <input name="landareamin" style="border-color: maroon" class="form-control input-sm" type="text" value="{{ old('landareamin', $my_landareamin) }}" placeholder="S участ min">
      </div>
      <div class="col-md-1">
        <input name="landareamax" style="border-color: maroon" class="form-control input-sm" type="text" value="{{ old('landareamax', $my_landareamax) }}" placeholder="S участ max">
      </div>
      {{-- <label for="exampleInputFile" class="col-md-1 control-label">Стоимость</label> --}}
      <div class="col-md-1">
        <input name="pricemin" style="border-color: khaki" class="form-control input-sm" type="text" value="{{ old('pricemin', $my_pricemin) }}" placeholder="Цена min">
      </div>
      <div class="col-md-1">
        <input name="pricemax" style="border-color: khaki" class="form-control input-sm" type="text" value="{{ old('pricemax', $my_pricemax) }}" placeholder="Цена max">
      </div>
{{-- {{ PHP_INT_MAX }} --}}
      <div class="col-md-1">
        <select  name="currency" class="form-control input-sm" id="sel1">
          <option value="{{ $curr = 'рубли' }}" {{ old('currency', $my_currency) == $curr ? 'selected' : '' }}>{{$curr}}</option>
          <option value="{{ $curr = 'доллары' }}" {{ old('currency', $my_currency) == $curr ? 'selected' : '' }}>{{$curr}}</option>
          <option value="{{ $curr = 'евро' }}" {{ old('currency', $my_currency) == $curr ? 'selected' : '' }}>{{$curr}}</option>
          <option value="{{ $curr = 'юани' }}" {{ old('currency', $my_currency) == $curr ? 'selected' : '' }}>{{$curr}}</option>
          <option value="{{ $curr = 'крипто' }}" {{ old('currency', $my_currency) == $curr ? 'selected' : '' }}>{{$curr}}</option>
        </select>
      </div>

        <div class="col-md-1 col-md-offset-1">
        {{-- <button type="button" class="btn-close-filter"><i class="fa fa-close"></i></button> --}}
          <input type="submit"  class="btn btn-warning input-sm" value="Фильтр">
        </div>

        <div class="col-md-1">
        {{-- <button type="button" class="btn-close-filter"><i class="fa fa-close"></i></button> --}}
          <a href="/sale" class="btn btn-default btn-sm" role="button">Сброс фильтра</a>
        </div>

      {{-- </div> --}}

    </form>

    </div>
  </div>
</div>
<!-- END CONTROL HEIGHT SIZING -->

{{-- <label for="sel1" class="col-md-1 control-label">от МКАД (км)</label>
<div class="col-md-1">
  <select  name="distance" class="form-control input-sm" id="sel1">
    <option value="{{ $dist = '0 - 5' }}" {{ old('distance', $my_distance) == $dist ? 'selected' : '' }}>{{$dist}}</option>
    <option value="{{ $dist = '5 - 10' }}" {{ old('distance', $my_distance) == $dist ? 'selected' : '' }}>{{$dist}}</option>
    <option value="{{ $dist = '10 - 15' }}" {{ old('distance', $my_distance) == $dist ? 'selected' : '' }}>{{$dist}}</option>
    <option value="{{ $dist = '15 - 20' }}" {{ old('distance', $my_distance) == $dist ? 'selected' : '' }}>{{$dist}}</option>
    <option value="{{ $dist = '20 - 25' }}" {{ old('distance', $my_distance) == $dist ? 'selected' : '' }}>{{$dist}}</option>
    <option value="{{ $dist = '25 - 50' }}" {{ old('distance', $my_distance) == $dist ? 'selected' : '' }}>{{$dist}}</option>
    <option value="{{ $dist = '50 - 100' }}" {{ old('distance', $my_distance) == $dist ? 'selected' : '' }}>{{$dist}}</option>
  </select>
</div>

<label for="sel2" class="col-md-1 control-label">S дома</label>
<div class="col-md-1">
  <select  name="housearea" class="form-control input-sm" id="sel2">
    <option value="{{ $house = '0 - 100' }}" {{ old('housearea', $my_housearea) == $house ? 'selected' : '' }}>{{$house}}</option>
    <option value="{{ $house = '100 - 200' }}" {{ old('housearea', $my_housearea) == $house ? 'selected' : '' }}>{{$house}}</option>
    <option value="{{ $house = '200 - 300' }}" {{ old('housearea', $my_housearea) == $house ? 'selected' : '' }}>{{$house}}</option>
    <option value="{{ $house = '300 - 400' }}" {{ old('housearea', $my_housearea) == $house ? 'selected' : '' }}>{{$house}}</option>
    <option value="{{ $house = '400 - 500' }}" {{ old('housearea', $my_housearea) == $house ? 'selected' : '' }}>{{$house}}</option>
    <option value="{{ $house = '500 - 1500' }}" {{ old('housearea', $my_housearea) == $house ? 'selected' : '' }}>{{$house}}</option>
    <option value="{{ $house = '1500 - 2500' }}" {{ old('housearea', $my_housearea) == $house ? 'selected' : '' }}>{{$house}}</option>
  </select>
</div>

<label for="sel3" class="col-md-1 control-label">S участка</label>
<div class="col-md-1">
  <select  name="landarea" class="form-control input-sm" id="sel3">
    <option value="{{ $land = '0 - 10' }}" {{ old('landarea', $my_landarea) == $land ? 'selected' : '' }}>{{$land}}</option>
    <option value="{{ $land = '10 - 20' }}" {{ old('landarea', $my_landarea) == $land ? 'selected' : '' }}>{{$land}}</option>
    <option value="{{ $land = '20 - 30' }}" {{ old('landarea', $my_landarea) == $land ? 'selected' : '' }}>{{$land}}</option>
    <option value="{{ $land = '30 - 40' }}" {{ old('landarea', $my_landarea) == $land ? 'selected' : '' }}>{{$land}}</option>
    <option value="{{ $land = '40 - 50' }}" {{ old('landarea', $my_landarea) == $land ? 'selected' : '' }}>{{$land}}</option>
    <option value="{{ $land = '50 - 150' }}" {{ old('landarea', $my_landarea) == $land ? 'selected' : '' }}>{{$land}}</option>
    <option value="{{ $land = '150 - 250' }}" {{ old('landarea', $my_landarea) == $land ? 'selected' : '' }}>{{$land}}</option>
  </select>
</div> --}}
