@extends('layout')


@section('content')


<div class="row">

	<div class="col-md-7">
		<div style="width: 250px; height: 250px;">
			{!! Mapper::render() !!}
		</div>

	</div>

	<div class="col-md-5">

	</div>
	<table>
		<tbody>
		<tr>
			<td>Удаленность от МКАД</td>
			<td>{{ $post->distance }}</td>
			<td>километров</td>
		</tr>
		<tr>
			<td>Площадь дома</td>
			<td>{{ $post->housearea }}</td>
			<td>метров квадратных</td>
		</tr>
		<tr>
			<td>Площадь участка</td>
			<td>{{ $post->landarea }}</td>
			<td>соток</td>
		</tr>
		<tr>
			<td>Стоимость</td>
			<td>{{ $post->price }}</td>
			<td>рублей</td>
		</tr>
		</tbody>
	</table>

</div>
@stop
