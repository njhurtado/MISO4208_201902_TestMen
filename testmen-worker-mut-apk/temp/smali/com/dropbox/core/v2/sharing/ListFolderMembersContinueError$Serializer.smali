.class Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ListFolderMembersContinueError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 252
    const/4 v0, 0x1

    .line 253
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 261
    :goto_0
    if-nez v2, :cond_1

    .line 262
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 257
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 258
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 259
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 264
    :cond_1
    const-string v4, "access_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    const-string v4, "access_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 267
    sget-object v4, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    .line 268
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    move-result-object v3

    .line 276
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
    :goto_1
    if-nez v0, :cond_2

    .line 277
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 278
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 280
    :cond_2
    return-object v3

    .line 270
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
    :cond_3
    const-string v4, "invalid_cursor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 271
    sget-object v3, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
    goto :goto_1

    .line 274
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
    :cond_4
    sget-object v3, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->OTHER:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
    goto :goto_1
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 227
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ListFolderMembersContinueError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->tag()Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 241
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 229
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 230
    const-string v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 231
    const-string v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->access$000(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 233
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 237
    :pswitch_1
    const-string v0, "invalid_cursor"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 222
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
