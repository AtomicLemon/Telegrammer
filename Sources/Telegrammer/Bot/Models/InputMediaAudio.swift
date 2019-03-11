// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 Represents an audio file to be treated as music to be sent.

 SeeAlso Telegram Bot API Reference:
 [InputMediaAudio](https://core.telegram.org/bots/api#inputmediaaudio)
 */
public final class InputMediaAudio: Encodable {

    /// Custom keys for coding/decoding `InputMediaAudio` struct
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case media = "media"
        case thumb = "thumb"
        case caption = "caption"
        case parseMode = "parse_mode"
        case duration = "duration"
        case performer = "performer"
        case title = "title"
    }

    /// Type of the result, must be audio
    public var type: String

    /// File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended), pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>” to upload a new one using multipart/form-data under <file_attach_name> name. More info on Sending Files »
    public var media: String

    /// Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail‘s width and height should not exceed 90. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can’t be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More info on Sending Files »
    public var thumb: FileInfo?

    /// Optional. Caption of the audio to be sent, 0-1024 characters
    public var caption: String?

    /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
    public var parseMode: String?

    /// Optional. Duration of the audio in seconds
    public var duration: Int?

    /// Optional. Performer of the audio
    public var performer: String?

    /// Optional. Title of the audio
    public var title: String?


    public init (type: String, media: String, thumb: FileInfo? = nil, caption: String? = nil, parseMode: String? = nil, duration: Int? = nil, performer: String? = nil, title: String? = nil) {
        self.type = type
        self.media = media
        self.thumb = thumb
        self.caption = caption
        self.parseMode = parseMode
        self.duration = duration
        self.performer = performer
        self.title = title
    }
}
