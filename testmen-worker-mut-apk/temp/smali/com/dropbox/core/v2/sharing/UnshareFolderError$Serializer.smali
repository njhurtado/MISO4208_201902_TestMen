.class Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UnshareFolderError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/UnshareFolderError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/UnshareFolderError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 302
    const/4 v0, 0x1

    .line 303
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 311
    :goto_0
    if-nez v2, :cond_1

    .line 312
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 307
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 308
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 309
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 314
    :cond_1
    const-string v4, "access_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 315
    const/4 v1, 0x0

    .line 316
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    const-string v4, "access_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 317
    sget-object v4, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    .line 318
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    move-result-object v3

    .line 332
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    :goto_1
    if-nez v0, :cond_2

    .line 333
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 334
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 336
    :cond_2
    return-object v3

    .line 320
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    :cond_3
    const-string v4, "team_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 321
    sget-object v3, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    goto :goto_1

    .line 323
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    :cond_4
    const-string v4, "no_permission"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 324
    sget-object v3, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    goto :goto_1

    .line 326
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    :cond_5
    const-string v4, "too_many_files"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 327
    sget-object v3, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    goto :goto_1

    .line 330
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    :cond_6
    sget-object v3, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/UnshareFolderError;
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
    .line 264
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/UnshareFolderError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 269
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError$1;->$SwitchMap$com$dropbox$core$v2$sharing$UnshareFolderError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->tag()Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 291
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 271
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 272
    const-string v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 273
    const-string v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->access$000(Lcom/dropbox/core/v2/sharing/UnshareFolderError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 275
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 279
    :pswitch_1
    const-string v0, "team_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :pswitch_2
    const-string v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :pswitch_3
    const-string v0, "too_many_files"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 264
    check-cast p1, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/UnshareFolderError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
