class Game {
  String getJankenResult(String hand) {
    String cpuHand = this.desideCpuHand();

    if (hand.equals(cpuHand)) {
      return "Draw";
    } else if (hand.equals("Gu") && cpuHand.equals("Choki")
      || hand.equals("Choki") && cpuHand.equals("Pa")
      || hand.equals("Pa") && cpuHand.equals("Gu")) {
      return "You Win!";
    } else {
      return "CPU Win!";
    }
  }

  String desideCpuHand() {
    int cpuHandNum = (int)random(3);
    if (cpuHandNum == 0) return "Gu";
    else if (cpuHandNum == 1) return "Choki";
    else return "Pa";
  }
}
