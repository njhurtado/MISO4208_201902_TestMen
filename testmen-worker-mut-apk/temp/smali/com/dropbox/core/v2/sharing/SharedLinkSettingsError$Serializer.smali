.class Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SharedLinkSettingsError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 66
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 74
    :goto_0
    if-nez v1, :cond_1

    .line 75
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 70
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 71
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 72
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 77
    :cond_1
    const-string v3, "invalid_settings"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    sget-object v2, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;->INVALID_SETTINGS:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    .line 86
    .local v2, "value":Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    :goto_1
    if-nez v0, :cond_2

    .line 87
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 88
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 90
    :cond_2
    return-object v2

    .line 80
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    :cond_3
    const-string v3, "not_authorized"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    sget-object v2, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;->NOT_AUTHORIZED:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    goto :goto_1

    .line 84
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    :cond_4
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3
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
    .line 39
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharedLinkSettingsError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :pswitch_0
    const-string v0, "invalid_settings"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 50
    :pswitch_1
    const-string v0, "not_authorized"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 44
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
    .line 39
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
