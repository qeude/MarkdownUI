import MarkdownUI
import SwiftUI

struct InlinesGroup: View {
  var body: some View {
    DemoSection(
      title: "Bold",
      description:
        "To bold text, add two asterisks or underscores before and after a word or phrase."
    ) {
      MarkdownView("I just love **bold text**.")
      MarkdownView("Love**is**bold")
    }
    DemoSection(
      title: "Italic",
      description:
        "To italicize text, add one asterisk or underscore before and after a word or phrase."
    ) {
      MarkdownView("Italicized text is the *cat's meow*.")
      MarkdownView("A*cat*meow")
    }
    DemoSection(
      title: "Bold and Italic",
      description:
        "To emphasize text with bold and italics at the same time, add three asterisks or"
        + " underscores before and after a word or phrase."
    ) {
      MarkdownView("This text is ***really important***.")
      MarkdownView("This is really***very***important text.")
    }
    DemoSection(
      title: "Code",
      description: "To denote a word or phrase as code, enclose it in backticks (`)."
    ) {
      MarkdownView(
        "You can set the alignment of the text by using the `multilineTextAlignment(_:)` view modifier."
      )
    }
  }
}
