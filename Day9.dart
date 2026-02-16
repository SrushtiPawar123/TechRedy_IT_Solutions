class CustomerProfile {
  String name;

  CustomerProfile(this.name);

  CustomerProfile operator +(String suffix) {
    return CustomerProfile(name + suffix);
  }

  void copyFrom(CustomerProfile other) {
    name = other.name;
  }

  @override
  String toString() {
    return "CustomerProfile(name: $name)";
  }
}

void main() {
  CustomerProfile user1 = CustomerProfile("Alice");

  CustomerProfile vipUser = user1 + "_VIP";
  print("VIP User: $vipUser");

  CustomerProfile user2 = CustomerProfile("Bob");
  print("Before copy: $user2");

  user2.copyFrom(user1);
  print("After copy: $user2");
}

