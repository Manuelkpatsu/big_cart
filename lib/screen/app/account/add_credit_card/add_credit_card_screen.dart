import 'package:big_cart_app/screen/widget/back_icon_button.dart';
import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/image_strings.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import 'widget/add_credit_card_button.dart';

class AddCreditCardScreen extends StatefulWidget {
  static const routeName = '/add_credit_card';

  const AddCreditCardScreen({super.key});

  @override
  State<AddCreditCardScreen> createState() => _AddCreditCardScreenState();
}

class _AddCreditCardScreenState extends State<AddCreditCardScreen> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIconButton(onPressed: () => HelperFunctions.popScreen(context)),
        title: const Text(TextStrings.addCreditCard),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              cardBgColor: CustomColor.primaryDarkColor,
              backgroundImage: 'assets/images/card_bg_image.png',
              obscureCardNumber: true,
              obscureCardCvv: true,
              isHolderNameVisible: true,
              isSwipeGestureEnabled: true,
              onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
              customCardTypeIcons: <CustomCardTypeIcon>[
                CustomCardTypeIcon(
                  cardType: CardType.mastercard,
                  cardImage: Image.asset(ImageStrings.masterCard, height: 48, width: 48),
                ),
                CustomCardTypeIcon(
                  cardType: CardType.visa,
                  cardImage: Image.asset(ImageStrings.visa, height: 48, width: 48),
                ),
                CustomCardTypeIcon(
                  cardType: CardType.americanExpress,
                  cardImage: Image.asset(ImageStrings.americanExpress, height: 48, width: 48),
                ),
                CustomCardTypeIcon(
                  cardType: CardType.elo,
                  cardImage: Image.asset(ImageStrings.elo, height: 48, width: 48),
                ),
                CustomCardTypeIcon(
                  cardType: CardType.hipercard,
                  cardImage: Image.asset(ImageStrings.hiperCard, height: 48, width: 48),
                ),
                CustomCardTypeIcon(
                  cardType: CardType.unionpay,
                  cardImage: Image.asset(ImageStrings.unionPay, height: 48, width: 48),
                ),
                CustomCardTypeIcon(
                  cardType: CardType.rupay,
                  cardImage: Image.asset(ImageStrings.rupay, height: 48, width: 48),
                ),
                CustomCardTypeIcon(
                  cardType: CardType.discover,
                  cardImage: Image.asset(ImageStrings.discover, height: 48, width: 48),
                ),
              ],
            ),
            CreditCardForm(
              formKey: formKey,
              obscureCvv: true,
              obscureNumber: true,
              cardNumber: cardNumber,
              cvvCode: cvvCode,
              isHolderNameVisible: true,
              isCardNumberVisible: true,
              isExpiryDateVisible: true,
              cardHolderName: cardHolderName,
              expiryDate: expiryDate,
              inputConfiguration: const InputConfiguration(
                cardNumberDecoration: InputDecoration(
                  hintText: TextStrings.cardNumber,
                  prefixIcon: Icon(Icons.credit_card),
                ),
                expiryDateDecoration: InputDecoration(
                  hintText: TextStrings.monthAndYear,
                  prefixIcon: Icon(Icons.calendar_today_outlined),
                ),
                cvvCodeDecoration: InputDecoration(
                  hintText: TextStrings.cvv,
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                ),
                cardHolderDecoration: InputDecoration(
                  hintText: TextStrings.nameOnTheCard,
                  prefixIcon: Icon(Icons.account_circle_outlined),
                ),
              ),
              onCreditCardModelChange: _onCreditCardModelChange,
            ),
          ],
        ),
      ),
      bottomSheet: AddCreditCardButton(onPressed: _onValidate),
    );
  }

  void _onValidate() {
    if (formKey.currentState?.validate() ?? false) {
      debugPrint('valid!');
    } else {
      debugPrint('invalid!');
    }
  }

  void _onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
