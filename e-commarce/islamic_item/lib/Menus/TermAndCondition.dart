import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islamic_item/Screen/HomeScreen.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: (Colors.teal),
        leading: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            child: Icon(Icons.arrow_back_ios_new)),
        title: Text(
          "Terms and Conditions",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /*Container(
              child: Image.asset(
                "images/logo-modified.png",
                height: 400,
                width: 300,
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "TERMS AND CONDITIONS OF SERVICE AGREEMENT",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Please read these terms of service agreement carefully. By using this app or ordering products from this app you agree to be bound by all of the terms and conditions of this agreement.",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: ListTile(
                      title: Text(
                        "This Terms of Service Agreement (the “Agreement”) governs your use of this app, www.IslamicItem.com (the “Website”), The Islamic Item (“Business Name”) offer of products for purchase on this Website, or your purchase of products available on this Website. This Agreement includes, and incorporates by this reference, the policies and guidelines referenced below. The Islamic Item reserves the right to change or revise the terms and conditions of this Agreement at any time by posting any changes or a revised Agreement on this Website. The Islamic Item will alert you that changes or revisions have been made by indicating on the top of this Agreement the date it was last revised. The changed or revised Agreement will be effective immediately after it is posted on this App. Your use of the app following the posting any such changes or of a revised Agreement will constitute your acceptance of any such changes or revisions. The Islamic Item encourages you to review this Agreement whenever you visit the App to make sure that you understand the terms and conditions governing use of the Website. This Agreement does not alter in any way the terms or conditions of any other written agreement you may have with The Islamic Item for other products or services. If you do not agree to this Agreement (including any referenced policies or guidelines), please immediately terminate your use of the App. If you would like to print this Agreement, please click the print button on your browser toolbar. ",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 12, 12, 12),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "I. PRODUCTS",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: ListTile(
                      title: Text(
                        "Terms of Offer. This App offers for sale certain products (the “Products”). By placing an order for Products through this App, you agree to the terms set forth in this Agreement.\nCustomer Solicitation:\nUnless you notify our third-party call, center reps or direct The Islamic Item sales reps, while they are calling you, of your desire to opt out from further direct company communications and solicitations, you are agreeing to continue to receive further emails and call solicitations The Islamic Item and it is designated in house or third-party call team(s).\nOpt Out Procedure:\nWe provide 3 easy ways to opt out of from future solicitations. \n1.You may use the opt out link found in any email solicitation that you may receive. \n2.You may also choose to opt out, via sending your email address to: info@islamicItem.com \n3.You may send a written remove request to House 06, Block E, Road 05, Banasree, Dhaka.\nProprietary Rights. The Islamic Item has proprietary rights and trade secrets in the Products. You may not copy, reproduce, resell or redistribute any Product manufactured and/or distributed by The Islamic Item. The Islamic Item also has rights to all trademarks and trade dress and specific layouts of this webpage, including calls to action, text placement, images and other information.\nSales Tax. If you purchase any Products, you will be responsible for paying any applicable sales tax. ",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 12, 12, 12),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "II. DISCLAIMER OF WARRANTIES",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: ListTile(
                      title: Text(
                        "The Islamic item expressly disclaims all warranties of any kind, whether express or implied, including, but not limited to, implied warranties of merchantability, fitness for a particular purpose and non-infringement with respect to the products or App content, or any reliance upon or use of the app content or products.(“PRODUCTS” INCLUDE TRIAL PRODUCTS.)\nWithout limiting the generality of the foregoing, the Islamic item makes no warranty:\nThat the information provided on this app is accurate, reliable, complete, or timely.\nThat the links to third-party app are to information that is accurate, reliable, complete, or timely.\nNo advice or information, whether oral or written, obtained by you from this app will create any warranty not expressly stated herein.\nAs to the results that may be obtained from the use of the products or that defects in products will be corrected.\nRegarding any products purchased or obtained through the app.\nSome jurisdictions do not allow the exclusion of certain warranties, so some of the above exclusions may not apply to you.",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 12, 12, 12),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "III. LIMITATION OF LIABILITY",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: ListTile(
                      title: Text(
                        "The Islamic item takes no liability or exclusive remedy, in law, in equity, or otherwise, with respect to the website content and products and/or for any breach of this agreement.The Islamic item will not be liable for any direct, indirect, incidental, special or consequential damages in connection with this agreement or the products in any manner, including liabilities resulting from (1) the use or the inability to use the website content or products; (2) the cost of procuring substitute products or content; (3) any products purchased or obtained or transactions entered into through the App; or (4) any lost profits you allege.\nSome jurisdictions do not allow the limitation or exclusion of liability for incidental or consequential damages so some of the above limitations may not apply to you.",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 12, 12, 12),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "IV. INDEMNIFICATION",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: ListTile(
                      title: Text(
                        "You will release, indemnify, defend and hold harmless The Islamic Item, and any of its contractors, agents, employees, officers, directors, shareholders, affiliates and assigns from all liabilities, claims, damages, costs and expenses, including reasonable attorneys’ fees and expenses, of third parties relating to or arising out of (1) this Agreement or the breach of your warranties, representations and obligations under this Agreement; (2) The App content or your use of the Website content; (3) the Products or your use of the Products (including Trial Products); (4) any intellectual property or other proprietary right of any person or entity; (5) your violation of any provision of this Agreement; or (6) any information or data you supplied to The Islamic Item. When The Islamic Item is threatened with suit or sued by a third party, The Islamic Item may seek written assurances from you concerning your promise to indemnify The Islamic Item; your failure to provide such assurances may be considered by The Islamic Item to be a material breach of this Agreement. The Islamic Item will have the right to participate in any defense by you of a third-party claim related to your use of any of the Website content or Products, with counsel of The Islamic Item choice at its expense. The Islamic Item will reasonably cooperate in any defense by you of a third-party claim at your request and expense. You will have sole responsibility to defend The Islamic Item against any claim, but you must receive The Islamic Item prior written consent regarding any related settlement. The terms of this provision will survive any termination or cancellation of this Agreement or your use of the App or Products.",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 12, 12, 12),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "V. PRIVACY",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: ListTile(
                      title: Text(
                        "The Islamic Item believes strongly in protecting user privacy and providing you with notice of The Islamic Item’s use of data. Please refer to The Islamic Item privacy policy, incorporated by reference herein, that is posted on the App.",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 12, 12, 12),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "VI. AGREEMENT TO BE BOUND",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: ListTile(
                      title: Text(
                        "By using this App or ordering Products, you acknowledge that you have read and agree to be bound by this Agreement and all terms and conditions on this App.",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 12, 12, 12),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "VII. GENERAL",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: ListTile(
                      title: Text(
                        "Force Majeure. The Islamic Item will not be deemed in default hereunder or held responsible for any cessation, interruption or delay in the performance of its obligations hereunder due to earthquake, flood, fire, storm, natural disaster, act of God, war, terrorism, armed conflict, labor strike, lockout, or boycott.\nCessation of Operation. The Islamic Item may at any time, in its sole discretion and without advance notice to you, cease operation of the Website and distribution of the Products.Entire Agreement. This Agreement comprises the entire agreement between you and The Islamic Item and supersedes any prior agreements pertaining to the subject matter contained herein.\nEffect of Waiver. The failure of The Islamic Item to exercise or enforce any right or provision of this Agreement will not constitute a waiver of such right or provision. If any provision of this Agreement is found by a court of competent jurisdiction to be invalid, the parties nevertheless agree that the court should endeavor to give effect to the parties’ intentions as reflected in the provision, and the other provisions of this Agreement remain in full force and effect.\nGoverning Law; Jurisdiction. This App originates from the [Dhaka]. This Agreement will be governed by the laws of the Bangladesh without regard to its conflict of law principles to the contrary. Neither you nor The Islamic Item will commence or prosecute any suit, proceeding or claim to enforce the provisions of this Agreement, to recover damages for breach of or default of this Agreement, or otherwise arising under or by reason of this Agreement, other than in courts located in State of Delhi. By using this App or ordering Products, you consent to the jurisdiction and venue of such courts in connection with any action, suit, proceeding or claim arising under or by reason of this Agreement. You hereby waive any right to trial by jury arising out of this Agreement and any related documents.\nStatute of Limitation. You agree that regardless of any statute or law to the contrary, any claim or cause of action arising out of or related to use of the Website or Products or this Agreement must be filed within one (1) year after such claim or cause of action arose or be forever barred.\nWaiver of Class Action Rights. By entering into this agreement, you hereby irrevocably waive any right you may have to join claims with those of other in the form of a class action or similar procedural device. Any claims arising out of, relating to, or connection with this agreement must be asserted individually.\nTermination. The Islamic Item reserves the right to terminate your access to the App if it reasonably believes, in its sole discretion, that you have breached any of the terms and conditions of this Agreement. Following termination, you will not be permitted to use the App and The Islamic Item may, in its sole discretion and without advance notice to you, cancel any outstanding orders for Products. If your access to the App is terminated, The Islamic Item reserves the right to exercise whatever means it deems necessary to prevent unauthorized access of the App. This Agreement will survive indefinitely unless and until The Islamic Item chooses, in its sole discretion and without advance to you, to terminate it.\nDomestic Use. The Islamic Item makes no representation that the app or Products are appropriate or available for use in locations outside India. Users who access the App from outside India do so at their own risk and initiative and must bear all responsibility for compliance with any applicable local laws.\nAssignment. You may not assign your rights and obligations under this Agreement to anyone. The Islamic Item may assign its rights and obligations under this Agreement in its sole discretion and without advance notice to you.\nBy using this website or ordering products from this website you agree.\nTo be bound by all of the terms and conditions of this agreement.",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 12, 12, 12),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "VIII. DISPATCH & DISCOUNT POLICY",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: ListTile(
                      title: Text(
                        "1- All orders will be dispatched within 72 hours after it has been placed.\n2- Though we try our best to get your products delivered within 4-7 days, but in some remote locations it may take 10 days.\n3- Only One Coupon will be applicable for single order.",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 12, 12, 12),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "IX. REFUND POLICY",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: ListTile(
                      title: Text(
                        "1. Customer should contact us on hotline number+8801880088459, email – info@islamicItem.com or DM to Facebook.\n2. Returns and refunds are covered for physical product damages, safety cap breakage during delivery, Wrong product dispatch.\n3. Customer should raise the concern within 72 hours of delivery for physical damages/ safety cap breakage during delivery or Wrong product dispatch.\n4. In case of refund, shipping charges will be borne by customer and product cost would be refunded.\n5. Refunds will be processed within 7 business working days upon approval.\n6. Refunds are applicable to all products however products need to be unused for refund to be processed.\n7. Conditions Apply*",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 12, 12, 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
