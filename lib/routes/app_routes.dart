import 'package:flutter/material.dart';
import 'package:larissa_gabriele_s_application2/presentation/a_screen/a_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/t_screen/t_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/e_screen/e_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/b_tab_container_screen/b_tab_container_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/c_screen/c_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/d_screen/d_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/j_screen/j_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/k_screen/k_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/l_screen/l_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/m_screen/m_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/n_screen/n_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/h_screen/h_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/s_screen/s_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/g_screen/g_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/i_screen/i_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/f_screen/f_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/o_screen/o_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/p_screen/p_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/q_screen/q_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/r_screen/r_screen.dart';
import 'package:larissa_gabriele_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String aScreen = '/a_screen';

  static const String tScreen = '/t_screen';

  static const String eScreen = '/e_screen';

  static const String bPage = '/b_page';

  static const String bTabContainerScreen = '/b_tab_container_screen';

  static const String cScreen = '/c_screen';

  static const String dScreen = '/d_screen';

  static const String jScreen = '/j_screen';

  static const String kScreen = '/k_screen';

  static const String lScreen = '/l_screen';

  static const String mScreen = '/m_screen';

  static const String nScreen = '/n_screen';

  static const String hScreen = '/h_screen';

  static const String sScreen = '/s_screen';

  static const String gScreen = '/g_screen';

  static const String iScreen = '/i_screen';

  static const String fScreen = '/f_screen';

  static const String oScreen = '/o_screen';

  static const String pScreen = '/p_screen';

  static const String qScreen = '/q_screen';

  static const String rScreen = '/r_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    aScreen: (context) => AScreen(),
    tScreen: (context) => TScreen(),
    eScreen: (context) => EScreen(),
    bTabContainerScreen: (context) => BTabContainerScreen(),
    cScreen: (context) => CScreen(),
    dScreen: (context) => DScreen(),
    jScreen: (context) => JScreen(),
    kScreen: (context) => KScreen(),
    lScreen: (context) => LScreen(),
    mScreen: (context) => MScreen(),
    nScreen: (context) => NScreen(),
    hScreen: (context) => HScreen(),
    sScreen: (context) => SScreen(),
    gScreen: (context) => GScreen(),
    iScreen: (context) => IScreen(),
    fScreen: (context) => FScreen(),
    oScreen: (context) => OScreen(),
    pScreen: (context) => PScreen(),
    qScreen: (context) => QScreen(),
    rScreen: (context) => RScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
