class Transaction {
  String? imagePath;
  String? title;
  String? subTitle;
  double? amount;

  Transaction({
    this.imagePath,
    this.title,
    this.subTitle,
    this.amount,
  });
}

List<Map<String, dynamic>> transactions = [
  {
    "date": DateTime.now(),
    "transactions": [
      Transaction(
        title: "From Mom",
        subTitle: "Good job!",
        amount: 100,
        imagePath: 'lib/assets/icons/zomato.png',
      ),
    ]
  },
  {
    "date": DateTime.now().subtract(const Duration(days: 1)),
    "transactions": [
      Transaction(
        title: "Carrefour",
        amount: -36.73,
        imagePath: 'lib/assets/icons/zomato.png',
      ),
      Transaction(
        title: "Starbucks",
        amount: -25.40,
        imagePath: 'lib/assets/icons/zomato.png',
      ),
    ]
  },
  {
    "date": DateTime.now().subtract(const Duration(days: 2)),
    "transactions": [
      Transaction(
        title: "Steam Deck",
        amount: -50,
        imagePath: 'lib/assets/icons/zomato.png',
      ),
      Transaction(
        title: "Zomato",
        amount: 55.90,
        imagePath: 'lib/assets/icons/zomato.png',
      ),
    ]
  },
  {
    "date": DateTime.now().subtract(const Duration(days: 3)),
    "transactions": [
      Transaction(
        title: "Zomato",
        amount: -55.90,
        imagePath: 'lib/assets/icons/zomato.png',
      ),
      Transaction(
        title: "Emergency Savings",
        amount: 100,
        imagePath: 'lib/assets/icons/zomato.png',
      ),
    ]
  },
  {
    "date": DateTime.now().subtract(const Duration(days: 4)),
    "transactions": [
      Transaction(
        title: "From Mom",
        subTitle: "Allowance",
        amount: 222,
        imagePath: 'lib/assets/icons/zomato.png',
      ),
    ]
  },
  // extra
  {
    "date": DateTime.now().subtract(const Duration(days: 5)),
    "transactions": [
      Transaction(
        title: "From Mom",
        subTitle: "Allowance",
        amount: 222,
        imagePath: 'lib/assets/icons/zomato.png',
      ),
    ]
  },
  {
    "date": DateTime.now().subtract(const Duration(days: 6)),
    "transactions": [
      Transaction(
        title: "From Mom",
        subTitle: "Allowance",
        amount: 222,
        imagePath: 'lib/assets/icons/zomato.png',
      ),
    ]
  },
  {
    "date": DateTime.now().subtract(const Duration(days: 7)),
    "transactions": [
      Transaction(
        title: "From Mom",
        subTitle: "Allowance",
        amount: 222,
        imagePath: 'lib/assets/icons/zomato.png',
      ),
    ]
  },
  {
    "date": DateTime.now().subtract(const Duration(days: 8)),
    "transactions": [
      Transaction(
        title: "From Mom",
        subTitle: "Allowance",
        amount: 222,
        imagePath: 'lib/assets/icons/zomato.png',
      ),
    ]
  },
];