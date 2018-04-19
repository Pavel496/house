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
  <tr>
    <td>Направление</td>
    <td colspan="2">{{ $post->direction->name }}</td>
    {{-- <td></td> --}}
  </tr>
  </tbody>
</table>
