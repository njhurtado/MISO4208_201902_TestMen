.class Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MobileClientPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MobileClientPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MobileClientPlatform;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MobileClientPlatform;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 91
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 99
    :goto_0
    if-nez v1, :cond_1

    .line 100
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 95
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 96
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 97
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 102
    :cond_1
    const-string v3, "iphone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    sget-object v2, Lcom/dropbox/core/v2/team/MobileClientPlatform;->IPHONE:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .line 120
    .local v2, "value":Lcom/dropbox/core/v2/team/MobileClientPlatform;
    :goto_1
    if-nez v0, :cond_2

    .line 121
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 122
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 124
    :cond_2
    return-object v2

    .line 105
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MobileClientPlatform;
    :cond_3
    const-string v3, "ipad"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 106
    sget-object v2, Lcom/dropbox/core/v2/team/MobileClientPlatform;->IPAD:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MobileClientPlatform;
    goto :goto_1

    .line 108
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MobileClientPlatform;
    :cond_4
    const-string v3, "android"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 109
    sget-object v2, Lcom/dropbox/core/v2/team/MobileClientPlatform;->ANDROID:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MobileClientPlatform;
    goto :goto_1

    .line 111
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MobileClientPlatform;
    :cond_5
    const-string v3, "windows_phone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 112
    sget-object v2, Lcom/dropbox/core/v2/team/MobileClientPlatform;->WINDOWS_PHONE:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MobileClientPlatform;
    goto :goto_1

    .line 114
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MobileClientPlatform;
    :cond_6
    const-string v3, "blackberry"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 115
    sget-object v2, Lcom/dropbox/core/v2/team/MobileClientPlatform;->BLACKBERRY:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MobileClientPlatform;
    goto :goto_1

    .line 118
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MobileClientPlatform;
    :cond_7
    sget-object v2, Lcom/dropbox/core/v2/team/MobileClientPlatform;->OTHER:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MobileClientPlatform;
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
    .line 52
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MobileClientPlatform;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MobileClientPlatform;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MobileClientPlatform;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/dropbox/core/v2/team/MobileClientPlatform$1;->$SwitchMap$com$dropbox$core$v2$team$MobileClientPlatform:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MobileClientPlatform;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 59
    :pswitch_0
    const-string v0, "iphone"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_1
    const-string v0, "ipad"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_2
    const-string v0, "android"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_3
    const-string v0, "windows_phone"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_4
    const-string v0, "blackberry"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    nop

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
    .line 52
    check-cast p1, Lcom/dropbox/core/v2/team/MobileClientPlatform;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MobileClientPlatform$Serializer;->serialize(Lcom/dropbox/core/v2/team/MobileClientPlatform;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
