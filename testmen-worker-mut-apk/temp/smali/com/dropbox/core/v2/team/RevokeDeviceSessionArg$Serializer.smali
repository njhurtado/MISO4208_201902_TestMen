.class Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RevokeDeviceSessionArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;

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
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 325
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 326
    const/4 v0, 0x1

    .line 327
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 335
    :goto_0
    if-nez v2, :cond_1

    .line 336
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 331
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 332
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 333
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 338
    :cond_1
    const-string v4, "web_session"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 339
    const/4 v1, 0x0

    .line 340
    .local v1, "fieldValue":Lcom/dropbox/core/v2/team/DeviceSessionArg;
    sget-object v4, Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;

    invoke-virtual {v4, p1, v6}, Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/DeviceSessionArg;

    move-result-object v1

    .line 341
    invoke-static {v1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSession(Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object v3

    .line 356
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .local v3, "value":Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    :goto_1
    if-nez v0, :cond_2

    .line 357
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 358
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 360
    :cond_2
    return-object v3

    .line 343
    .end local v3    # "value":Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    :cond_3
    const-string v4, "desktop_client"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, "fieldValue":Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;
    sget-object v4, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;

    invoke-virtual {v4, p1, v6}, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    move-result-object v1

    .line 346
    invoke-static {v1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClient(Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object v3

    .line 347
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    goto :goto_1

    .line 348
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    :cond_4
    const-string v4, "mobile_client"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, "fieldValue":Lcom/dropbox/core/v2/team/DeviceSessionArg;
    sget-object v4, Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;

    invoke-virtual {v4, p1, v6}, Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/DeviceSessionArg;

    move-result-object v1

    .line 351
    invoke-static {v1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClient(Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object v3

    .line 352
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    goto :goto_1

    .line 354
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    :cond_5
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
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 292
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$1;->$SwitchMap$com$dropbox$core$v2$team$RevokeDeviceSessionArg$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->tag()Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->tag()Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

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
    const-string v0, "web_session"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 296
    sget-object v0, Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->access$000(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/DeviceSessionArg;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/DeviceSessionArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 297
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 318
    :goto_0
    return-void

    .line 301
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 302
    const-string v0, "desktop_client"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 303
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->access$100(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 304
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 308
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 309
    const-string v0, "mobile_client"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 310
    sget-object v0, Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->access$200(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/DeviceSessionArg;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/DeviceSessionArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 311
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    check-cast p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
