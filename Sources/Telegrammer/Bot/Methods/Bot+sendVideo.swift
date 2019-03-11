// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Parameters container struct for `sendVideo` method
    public struct SendVideoParams: MultipartEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Video to send. Pass a file_id as String to send a video that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a video from the Internet, or upload a new video using multipart/form-data. More info on Sending Files »
        var video: FileInfo

        /// Duration of sent video in seconds
        var duration: Int?

        /// Video width
        var width: Int?

        /// Video height
        var height: Int?

        /// Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail‘s width and height should not exceed 90. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can’t be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More info on Sending Files »
        var thumb: FileInfo?

        /// Video caption (may also be used when resending videos by file_id), 0-1024 characters
        var caption: String?

        /// Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
        var parseMode: ParseMode?

        /// Pass True, if the uploaded video is suitable for streaming
        var supportsStreaming: Bool?

        /// Sends the message silently. Users will receive a notification with no sound.
        var disableNotification: Bool?

        /// If the message is a reply, ID of the original message
        var replyToMessageId: Int?

        /// Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.
        var replyMarkup: ReplyMarkup?

        /// Custom keys for coding/decoding `SendVideoParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case video = "video"
            case duration = "duration"
            case width = "width"
            case height = "height"
            case thumb = "thumb"
            case caption = "caption"
            case parseMode = "parse_mode"
            case supportsStreaming = "supports_streaming"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, video: FileInfo, duration: Int? = nil, width: Int? = nil, height: Int? = nil, thumb: FileInfo? = nil, caption: String? = nil, parseMode: ParseMode? = nil, supportsStreaming: Bool? = nil, disableNotification: Bool? = nil, replyToMessageId: Int? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.video = video
            self.duration = duration
            self.width = width
            self.height = height
            self.thumb = thumb
            self.caption = caption
            self.parseMode = parseMode
            self.supportsStreaming = supportsStreaming
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to send video files, Telegram clients support mp4 videos (other formats may be sent as Document). On success, the sent Message is returned. Bots can currently send video files of up to 50 MB in size, this limit may be changed in the future.

     SeeAlso Telegram Bot API Reference:
     [SendVideoParams](https://core.telegram.org/bots/api#sendvideo)
     
     - Parameters:
         - params: Parameters container, see `SendVideoParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    public func sendVideo(params: SendVideoParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        let response: Future<TelegramContainer<Message>>
        response = try client.respond(endpoint: "sendVideo", body: body, headers: headers)
        return response.flatMap(to: Message.self) { try self.wrap($0) }
    }
}
