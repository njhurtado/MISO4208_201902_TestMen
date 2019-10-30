.class Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ModifySharedLinkSettingsError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 331
    const/4 v0, 0x1

    .line 332
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 340
    :goto_0
    if-nez v2, :cond_1

    .line 341
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 336
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 337
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 338
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 343
    :cond_1
    const-string v4, "shared_link_not_found"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 344
    sget-object v3, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 367
    .local v3, "value":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    :goto_1
    if-nez v0, :cond_2

    .line 368
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 369
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 371
    :cond_2
    return-object v3

    .line 346
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    :cond_3
    const-string v4, "shared_link_access_denied"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 347
    sget-object v3, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    goto :goto_1

    .line 349
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    :cond_4
    const-string v4, "unsupported_link_type"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 350
    sget-object v3, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    goto :goto_1

    .line 352
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    :cond_5
    const-string v4, "other"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 353
    sget-object v3, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    goto :goto_1

    .line 355
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    :cond_6
    const-string v4, "settings_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    const-string v4, "settings_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 358
    sget-object v4, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    move-result-object v1

    .line 359
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsError(Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    move-result-object v3

    .line 360
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    goto :goto_1

    .line 361
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    :cond_7
    const-string v4, "email_not_verified"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 362
    sget-object v3, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    goto :goto_1

    .line 365
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    :cond_8
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4
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
    .line 285
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 290
    sget-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ModifySharedLinkSettingsError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->tag()Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->tag()Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :pswitch_0
    const-string v0, "shared_link_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 296
    :pswitch_1
    const-string v0, "shared_link_access_denied"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :pswitch_2
    const-string v0, "unsupported_link_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :pswitch_3
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 309
    const-string v0, "settings_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 310
    const-string v0, "settings_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->access$000(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 312
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 316
    :pswitch_5
    const-string v0, "email_not_verified"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
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
    .line 285
    check-cast p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
