import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class HTMLWidget extends StatelessWidget {
  HTMLWidget({Key? key, this.htmlData}) : super(key: key);
  final String? htmlData;

  @override
  Widget build(BuildContext context) {
    return Html(
      data: htmlData,
      style: {
        "p": Style(
          padding: EdgeInsets.all(0),
          fontSize: FontSize.large,
        ),
        "table": Style(
          backgroundColor: Color.fromARGB(0x50, 0xee, 0xee, 0xee),
        ),
        "tr": Style(
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        "th": Style(
          padding: EdgeInsets.all(6),
          backgroundColor: Colors.grey,
        ),
        "td": Style(
          padding: EdgeInsets.all(6),
          alignment: Alignment.topLeft,
        ),
        'h5': Style(maxLines: 2, textOverflow: TextOverflow.ellipsis),
      },
      customRender: {
        "table": (context, child) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: (context.tree as TableLayoutElement).toWidget(context),
          );
        },
        "bird": (RenderContext context, Widget child) {
          return TextSpan(text: "🐦");
        },
        "flutter": (RenderContext context, Widget child) {
          return FlutterLogo(
            style: (context.tree.element!.attributes['horizontal'] != null)
                ? FlutterLogoStyle.horizontal
                : FlutterLogoStyle.markOnly,
            textColor: context.style.color!,
            size: context.style.fontSize!.size! * 5,
          );
        },
      },
      customImageRenders: {
        networkSourceMatcher(domains: ["flutter.dev"]):
            (context, attributes, element) {
          return FlutterLogo(size: 36);
        },
        networkSourceMatcher(domains: ["mydomain.com"]): networkImageRender(
          headers: {"Custom-Header": "some-value"},
          altWidget: (alt) => Text(alt ?? ""),
          loadingWidget: () => Text("Loading..."),
        ),
        // On relative paths starting with /wiki, prefix with a base url
        (attr, _) => attr["src"] != null && attr["src"]!.startsWith("/wiki"):
            networkImageRender(
                mapUrl: (url) => "https://upload.wikimedia.org" + url!),
        // Custom placeholder image for broken links
        networkSourceMatcher():
            networkImageRender(altWidget: (_) => FlutterLogo()),
      },
      onLinkTap: (url, _, __, ___) {
        //launchURL(url!);
      },
      onImageTap: (src, _, __, ___) {
        print(src);
      },
      onImageError: (exception, stackTrace) {
        print(exception);
      },
      onCssParseError: (css, messages) {
        print("css that errored: $css");
        print("error messages:");
        messages.forEach((element) {
          print(element);
        });
      },
    );
  }
}
