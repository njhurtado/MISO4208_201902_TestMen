.class Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "CreateSharedLinkWithSettingsError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 333
    const/4 v0, 0x1

    .line 334
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 342
    :goto_0
    if-nez v2, :cond_1

    .line 343
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 338
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 339
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 340
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 345
    :cond_1
    const-string v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 346
    const/4 v1, 0x0

    .line 347
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    const-string v4, "path"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 348
    sget-object v4, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 349
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    move-result-object v3

    .line 369
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    :goto_1
    if-nez v0, :cond_2

    .line 370
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 371
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 373
    :cond_2
    return-object v3

    .line 351
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    :cond_3
    const-string v4, "email_not_verified"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 352
    sget-object v3, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    goto :goto_1

    .line 354
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    :cond_4
    const-string v4, "shared_link_already_exists"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 355
    sget-object v3, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->SHARED_LINK_ALREADY_EXISTS:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    goto :goto_1

    .line 357
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    :cond_5
    const-string v4, "settings_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    const-string v4, "settings_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 360
    sget-object v4, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    move-result-object v1

    .line 361
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsError(Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    move-result-object v3

    .line 362
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    goto :goto_1

    .line 363
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    :cond_6
    const-string v4, "access_denied"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 364
    sget-object v3, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    goto :goto_1

    .line 367
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    :cond_7
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
    .line 287
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 292
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$1;->$SwitchMap$com$dropbox$core$v2$sharing$CreateSharedLinkWithSettingsError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->tag()Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->tag()Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 295
    const-string v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 296
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 297
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->access$000(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 298
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 325
    :goto_0
    return-void

    .line 302
    :pswitch_1
    const-string v0, "email_not_verified"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :pswitch_2
    const-string v0, "shared_link_already_exists"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 311
    const-string v0, "settings_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 312
    const-string v0, "settings_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 313
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->access$100(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;)Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 314
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 318
    :pswitch_4
    const-string v0, "access_denied"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
    .line 287
    check-cast p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
