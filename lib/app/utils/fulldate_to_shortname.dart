String shortname(String? name) {
  switch (name) {
    case 'воскресенье':
      return 'ВС';
    case 'суббота':
      return 'СБ';
    case 'пятница':
      return 'ПТ';
    case 'четверг':
      return 'ЧТ';
    case 'среда':
      return 'СР';
    case 'вторник':
      return 'ВТ';
    case 'понедельник':
      return 'ПН';
    default:
      return name ?? 'null';
  }
}
