// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 Represents a link to an animated GIF file stored on the Telegram servers. By default, this animated GIF file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with specified content instead of the animation.

 SeeAlso Telegram Bot API Reference:
 [InlineQueryResultCachedGif](https://core.telegram.org/bots/api#inlinequeryresultcachedgif)
 */
public final class InlineQueryResultCachedGif: Codable {

    /// Custom keys for coding/decoding `InlineQueryResultCachedGif` struct
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case id = "id"
        case gifFileId = "gif_file_id"
        case title = "title"
        case caption = "caption"
        case parseMode = "parse_mode"
        case replyMarkup = "reply_markup"
        case inputMessageContent = "input_message_content"
    }

    /// Type of the result, must be gif
    public var type: String

    /// Unique identifier for this result, 1-64 bytes
    public var id: String

    /// A valid file identifier for the GIF file
    public var gifFileId: String

    /// Optional. Title for the result
    public var title: String?

    /// Optional. Caption of the GIF file to be sent, 0-1024 characters
    public var caption: String?

    /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
    public var parseMode: String?

    /// Optional. Inline keyboard attached to the message
    public var replyMarkup: InlineKeyboardMarkup?

    /// Optional. Content of the message to be sent instead of the GIF animation
    public var inputMessageContent: InputMessageContent?


    public init (type: String, id: String, gifFileId: String, title: String? = nil, caption: String? = nil, parseMode: String? = nil, replyMarkup: InlineKeyboardMarkup? = nil, inputMessageContent: InputMessageContent? = nil) {
        self.type = type
        self.id = id
        self.gifFileId = gifFileId
        self.title = title
        self.caption = caption
        self.parseMode = parseMode
        self.replyMarkup = replyMarkup
        self.inputMessageContent = inputMessageContent
    }
}
