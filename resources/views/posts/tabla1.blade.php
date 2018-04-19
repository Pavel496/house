<table class="table table-condensed">
  <tbody>
  <tr>
    <td>МКАД</td>
    <td>{{ $post->distance }}</td>
    <td>км</td>
  </tr>
  <tr>
    <td>Дом</td>
    <td>{{ $post->housearea }}</td>
    <td>м кв</td>
  </tr>
  <tr>
    <td>Участок</td>
    <td>{{ $post->landarea }}</td>
    <td>соток</td>
  </tr>
  <tr>
    <td>Цена</td>
    <td>{{ $post->price }}</td>
    <td>{{ $post->currency }}</td>
  </tr>
  <tr>
    <td>Направление</td>
    <td colspan="2">{{ $post->direction->name }}</td>
    {{-- <td></td> --}}
  </tr>
  </tbody>
</table>
