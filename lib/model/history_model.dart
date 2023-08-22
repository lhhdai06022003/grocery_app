

class History {
  final int id;
  final String title;
  final String confirm;
  final String date;
  final bool isExpect;
  final double price;

  History( {required this.id,
    required this.title,
    required this.confirm,
    required this.date,
    required this.isExpect,
    required this.price
  });
}
List<History> listHistory = [
  History(
      title: "Order #123",
      confirm: "Delivered",
      date: "October 26, 2023",
      isExpect: true, id: 1, price: 12.2),
  History(
      title: "Order #123",
      confirm: "Delivered",
      date: "October 26, 2023",
      isExpect: false, id: 2, price: 13.2),
  History(
      title: "Order #123",
      confirm: "Delivered",
      date: "October 26, 2023",
      isExpect: true, id: 3, price: 31.2),
  History(
      title: "Order #123",
      confirm: "Delivered",
      date: "October 26, 2023",
      isExpect: false, id: 4, price: 32.1),
  ];