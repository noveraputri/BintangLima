class Scene5 {
  PApplet parent;
  float mouthOffset;
  boolean mouthIncreasing;
  float offsetX;

  Scene5(PApplet p) {
    parent = p;
    mouthOffset = 0;
    mouthIncreasing = true;
    offsetX = 250;
  }

  void draw() {
    parent.background(135, 206, 235);

    // Outer Circle
    parent.fill(0xFFD22C);
    parent.ellipse(400 + offsetX, 400, 800, 800);

    // Inner Circle
    parent.fill(0xFFB903);
    parent.ellipse(400 + offsetX, 400, 700, 700);

    // Path
    parent.fill(0xFFD22C);
    parent.beginShape();
    vertex(614.916 + offsetX, 199.304);
  vertex(615.243 + offsetX, 203.867);
  vertex(614.618 + offsetX, 208.171);
  vertex(613.046 + offsetX, 212.214);
  vertex(605.96 + offsetX, 218.164);
  vertex(597.859 + offsetX, 221.392);
  vertex(588.747 + offsetX, 221.898);
  vertex(583.883 + offsetX, 223.798);
  vertex(579.833 + offsetX, 227.026);
  vertex(576.597 + offsetX, 231.581);
  vertex(566.15 + offsetX, 253.478);
  vertex(556.182 + offsetX, 275.714);
  vertex(546.69 + offsetX, 298.286);
  vertex(545.411 + offsetX, 301.049);
  vertex(545.724 + offsetX, 303.559);
  vertex(547.624 + offsetX, 305.818);
  vertex(555.217 + offsetX, 312.335);
  vertex(563.316 + offsetX, 317.715);
  vertex(571.924 + offsetX, 321.956);
  vertex(578.545 + offsetX, 321.283);
  vertex(584.775 + offsetX, 322.001);
  vertex(590.616 + offsetX, 324.108);
  vertex(585.121 + offsetX, 345.241);
  vertex(578.889 + offsetX, 366.042);
  vertex(571.924 + offsetX, 386.51);
  vertex(568.412 + offsetX, 388.321);
  vertex(564.673 + offsetX, 389.038);
  vertex(560.709 + offsetX, 388.662);
  vertex(561.81 + offsetX, 365.368);
  vertex(557.137 + offsetX, 343.85);
  vertex(546.69 + offsetX, 324.108);
  vertex(544.501 + offsetX, 319.555);
  vertex(541.697 + offsetX, 318.121);
  vertex(538.279 + offsetX, 319.804);
  vertex(517.717 + offsetX, 368.579);
  vertex(497.156 + offsetX, 417.352);
  vertex(476.595 + offsetX, 466.127);
  vertex(479.872 + offsetX, 470.861);
  vertex(484.233 + offsetX, 473.372);
  vertex(489.679 + offsetX, 473.658);
  vertex(505.971 + offsetX, 477.682);
  vertex(520.302 + offsetX, 473.378);
  vertex(532.671 + offsetX, 460.747);
  vertex(538.66 + offsetX, 454.574);
  vertex(543.955 + offsetX, 447.761);
  vertex(548.559 + offsetX, 440.305);
  vertex(557.354 + offsetX, 444.923);
  vertex(559.223 + offsetX, 452.095);
  vertex(554.167 + offsetX, 461.823);
  vertex(540.273 + offsetX, 488.215);
  vertex(520.022 + offsetX, 497.898);
  vertex(493.418 + offsetX, 490.873);
  vertex(486.016 + offsetX, 489.192);
  vertex(478.851 + offsetX, 486.681);
  vertex(471.922 + offsetX, 483.341);
  vertex(470.987 + offsetX, 484.058);
  vertex(470.053 + offsetX, 484.776);
  vertex(469.118 + offsetX, 485.493);
  vertex(454.295 + offsetX, 519.829);
  vertex(439.654 + offsetX, 554.258);
  vertex(425.192 + offsetX, 588.779);
  vertex(422.644 + offsetX, 593.479);
  vertex(419.84 + offsetX, 597.783);
  vertex(416.781 + offsetX, 601.69);
  vertex(411.377 + offsetX, 603.633);
  vertex(405.769 + offsetX, 604.35);
  vertex(399.958 + offsetX, 603.842);
  vertex(381.318 + offsetX, 565.243);
  vertex(362.626 + offsetX, 526.511);
  vertex(343.882 + offsetX, 487.645);
  vertex(294.443 + offsetX, 498.1);
  vertex(258.617 + offsetX, 477.299);
  vertex(236.403 + offsetX, 425.243);
  vertex(224.019 + offsetX, 381.134);
  vertex(232.43 + offsetX, 343.119);
  vertex(261.637 + offsetX, 311.197);
  vertex(250.585 + offsetX, 286.466);
  vertex(239.059 + offsetX, 262.079);
  vertex(227.057 + offsetX, 238.036);
  vertex(217.591 + offsetX, 231.289);
  vertex(207.31 + offsetX, 226.627);
  vertex(196.215 + offsetX, 224.049);
  vertex(191.411 + offsetX, 219.601);
  vertex(187.673 + offsetX, 214.221);
  vertex(185 + offsetX, 207.911);
  vertex(186.519 + offsetX, 205.084);
  vertex(188.388 + offsetX, 202.573);
  vertex(190.608 + offsetX, 200.38);
  vertex(229.864 + offsetX, 199.662);
  vertex(269.117 + offsetX, 200.021);
  vertex(308.367 + offsetX, 201.455);
  vertex(308.885 + offsetX, 207.798);
  vertex(308.262 + offsetX, 213.895);
  vertex(306.498 + offsetX, 219.746);
  vertex(296.958 + offsetX, 221.798);
  vertex(287.612 + offsetX, 224.667);
  vertex(278.46 + offsetX, 228.353);
  vertex(274.167 + offsetX, 231.071);
  vertex(272.609 + offsetX, 235.016);
  vertex(273.787 + offsetX, 240.188);
  vertex(281.41 + offsetX, 258.458);
  vertex(289.51 + offsetX, 276.389);
  vertex(298.087 + offsetX, 293.983);
  vertex(317.836 + offsetX, 290.512);
  vertex(337.462 + offsetX, 291.588);
  vertex(356.966 + offsetX, 297.211);
  vertex(381.185 + offsetX, 315.975);
  vertex(395.829 + offsetX, 342.155);
  vertex(400.892 + offsetX, 375.751);
  vertex(406.255 + offsetX, 411.656);
  vertex(399.089 + offsetX, 443.576);
  vertex(379.397 + offsetX, 471.506);
  vertex(392.131 + offsetX, 499.751);
  vertex(404.593 + offsetX, 528.084);
  vertex(416.781 + offsetX, 556.502);
  vertex(418.74 + offsetX, 561.738);
  vertex(419.984 + offsetX, 561.738);
  vertex(420.519 + offsetX, 556.502);
  vertex(431.473 + offsetX, 528.056);
  vertex(442.688 + offsetX, 499.723);
  vertex(454.165 + offsetX, 471.506);
  vertex(431.319 + offsetX, 453.754);
  vertex(420.104 + offsetX, 428.649);
  vertex(420.519 + offsetX, 396.193);
  vertex(422.201 + offsetX, 357.152);
  vertex(436.532 + offsetX, 326.309);
  vertex(463.511 + offsetX, 303.666);
  vertex(468.761 + offsetX, 299.919);
  vertex(474.369 + offsetX, 297.409);
  vertex(480.333 + offsetX, 296.135);
  vertex(493.364 + offsetX, 294.435);
  vertex(506.448 + offsetX, 293.718);
  vertex(519.587 + offsetX, 293.983);
  vertex(522.349 + offsetX, 294.547);
  vertex(524.841 + offsetX, 293.829);
  vertex(527.063 + offsetX, 291.831);
  vertex(535.323 + offsetX, 272.457);
  vertex(542.8 + offsetX, 252.732);
  vertex(549.494 + offsetX, 232.657);
  vertex(549.12 + offsetX, 227.197);
  vertex(546.628 + offsetX, 223.611);
  vertex(542.017 + offsetX, 221.898);
  vertex(531.819 + offsetX, 219.944);
  vertex(521.85 + offsetX, 217.075);
  vertex(512.11 + offsetX, 213.29);
  vertex(507.354 + offsetX, 209.471);
  vertex(507.354 + offsetX, 205.526);
  vertex(512.11 + offsetX, 201.455);
  vertex(514.252 + offsetX, 200.068);
  vertex(516.121 + offsetX, 198.274);
  vertex(517.717 + offsetX, 196.076);
  vertex(547.624 + offsetX, 194.641);
  vertex(577.532 + offsetX, 194.641);
  vertex(607.439 + offsetX, 196.076);
  vertex(610.058 + offsetX, 196.958);
  vertex(612.549 + offsetX, 198.034);
  vertex(614.916 + offsetX, 199.304);

    parent.endShape(PApplet.CLOSE);

    // Sub-paths
    parent.fill(0xFFD22C);
    parent.beginShape();
      beginShape();
  vertex(304.629 + offsetX, 306.894);
  vertex(352.311 + offsetX, 323.801);
  vertex(377.856 + offsetX, 361.099);
  vertex(381.266 + offsetX, 418.787);
  vertex(381.09 + offsetX, 431.786);
  vertex(378.286 + offsetX, 443.98);
  vertex(372.854 + offsetX, 455.368);
  vertex(349.113 + offsetX, 406.442);
  vertex(326.371 + offsetX, 356.95);
  vertex(304.629 + offsetX, 306.894);
  endShape(CLOSE);

  beginShape();
  vertex(459.772 + offsetX, 453.216);
  vertex(459.909 + offsetX, 449.93);
  vertex(458.662 + offsetX, 447.778);
  vertex(456.034 + offsetX, 446.761);
  vertex(449.338 + offsetX, 433.396);
  vertex(447.157 + offsetX, 419.05);
  vertex(449.492 + offsetX, 403.725);
  vertex(452.583 + offsetX, 383.721);
  vertex(457.568 + offsetX, 364.355);
  vertex(464.445 + offsetX, 345.626);
  vertex(477.814 + offsetX, 323.947);
  vertex(495.883 + offsetX, 311.036);
  vertex(518.652 + offsetX, 306.894);
  vertex(518.08 + offsetX, 311.892);
  vertex(516.835 + offsetX, 316.913);
  vertex(514.914 + offsetX, 321.956);
  vertex(497.433 + offsetX, 366.498);
  vertex(479.053 + offsetX, 410.251);
  vertex(459.772 + offsetX, 453.216);
  endShape(CLOSE);

    parent.endShape(PApplet.CLOSE);

    // Menggambar wajah
    parent.fill(255, 224, 189);
    parent.ellipse(parent.width/2 + offsetX, parent.height/4, 100, 120);

    // Menggambar topi bajak laut
    parent.fill(0);
    parent.arc(parent.width/2 + offsetX, parent.height/3.5 - 80, 200, 150, PApplet.PI, PApplet.TWO_PI);

    // Menggambar mata kiri
    parent.fill(255);
    parent.ellipse(parent.width/2 + offsetX - 20, parent.height/4 - 20, 20, 20);
    parent.fill(0);
    parent.ellipse(parent.width/2 + offsetX - 20, parent.height/4 - 20, 10, 10);

    // Menggambar mata kanan
    parent.fill(255);
    parent.ellipse(parent.width/1.9 + offsetX - 30, parent.height/4 - 20, 20, 20);
    parent.fill(0);
    parent.ellipse(parent.width/1.9 + offsetX - 30, parent.height/4 - 20, 10, 10);

    // Menggambar mulut
    parent.fill(255, 0, 0);
    parent.arc(parent.width/2 + offsetX, parent.height/4 + 20, 50, 20 + mouthOffset, 0, PApplet.PI);

    // Menggambar tubuh
    parent.fill(0, 0, 255);
    parent.rect(parent.width/2 + offsetX - 50, parent.height/4 + 60, 100, 150, 20);

    // Menggambar sabuk
    parent.fill(139, 69, 19);
    parent.rect(parent.width/2 + offsetX - 50, parent.height/4 + 120, 100, 20);
    parent.fill(255, 215, 0);
    parent.rect(parent.width/2 + offsetX - 10, parent.height/4 + 120, 20, 20);

    // Menggambar lengan kiri
    parent.fill(0, 0, 255);
    parent.rect(parent.width/2 + offsetX - 80, parent.height/4 + 60, 30, 100, 20);
    // Menggambar lengan kanan
    parent.rect(parent.width/2 + offsetX + 50, parent.height/4 + 60, 30, 100, 20);

    // Menggambar tangan kiri
    parent.fill(255, 224, 189);
    parent.ellipse(parent.width/2 + offsetX - 65, parent.height/4 + 160, 30, 30);
    // Menggambar tangan kanan
    parent.ellipse(parent.width/2 + offsetX + 65, parent.height/4 + 160, 30, 30);

    // Menggambar celana
    parent.fill(0, 128, 0);
    parent.rect(parent.width/2 + offsetX - 50, parent.height/4 + 210, 45, 150, 10);
    parent.rect(parent.width/2 + offsetX + 5, parent.height/4 + 210, 45, 150, 10);

    // Menggambar sepatu
    parent.fill(0);
    parent.rect(parent.width/2 + offsetX - 50, parent.height/4 + 360, 45, 20, 10);
    parent.rect(parent.width/2 + offsetX + 5, parent.height/4 + 360, 45, 20, 10);

    // Menggambar janggut
    parent.fill(0);
    parent.beginShape();
    parent.vertex(parent.width/2 + offsetX - 30, parent.height/4 + 40);
    parent.vertex(parent.width/2 + offsetX - 20, parent.height/4 + 80);
    parent.vertex(parent.width/2 + offsetX, parent.height/4 + 90);
    parent.vertex(parent.width/2 + offsetX + 20, parent.height/4 + 80);
    parent.vertex(parent.width/2 + offsetX + 30, parent.height/4 + 40);
    parent.endShape(PApplet.CLOSE);

    // Menggambar anting-anting
    parent.fill(255, 215, 0);
    parent.ellipse(parent.width/2 + offsetX - 50, parent.height/4 - 10, 10, 20);
    parent.ellipse(parent.width/2 + offsetX + 50, parent.height/4 - 10, 10, 20);

    // Update mouthOffset for animation
    if (mouthIncreasing) {
      mouthOffset += 0.5;
      if (mouthOffset > 10) {
        mouthIncreasing = false;
      }
    } else {
      mouthOffset -= 0.5;
      if (mouthOffset < 0) {
        mouthIncreasing = true;
      }
    }
  }

  void stop() {
    // Stop logic for Scene5
  }
}
