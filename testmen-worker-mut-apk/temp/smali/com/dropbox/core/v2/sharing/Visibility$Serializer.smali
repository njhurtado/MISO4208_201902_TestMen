.class Lcom/dropbox/core/v2/sharing/Visibility$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/Visibility;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/Visibility$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/Visibility$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/Visibility;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 99
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 107
    :goto_0
    if-nez v1, :cond_1

    .line 108
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 103
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 104
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 105
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 110
    :cond_1
    const-string v3, "public"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 111
    sget-object v2, Lcom/dropbox/core/v2/sharing/Visibility;->PUBLIC:Lcom/dropbox/core/v2/sharing/Visibility;

    .line 128
    .local v2, "value":Lcom/dropbox/core/v2/sharing/Visibility;
    :goto_1
    if-nez v0, :cond_2

    .line 129
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 130
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 132
    :cond_2
    return-object v2

    .line 113
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/Visibility;
    :cond_3
    const-string v3, "team_only"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 114
    sget-object v2, Lcom/dropbox/core/v2/sharing/Visibility;->TEAM_ONLY:Lcom/dropbox/core/v2/sharing/Visibility;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/Visibility;
    goto :goto_1

    .line 116
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/Visibility;
    :cond_4
    const-string v3, "password"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 117
    sget-object v2, Lcom/dropbox/core/v2/sharing/Visibility;->PASSWORD:Lcom/dropbox/core/v2/sharing/Visibility;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/Visibility;
    goto :goto_1

    .line 119
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/Visibility;
    :cond_5
    const-string v3, "team_and_password"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 120
    sget-object v2, Lcom/dropbox/core/v2/sharing/Visibility;->TEAM_AND_PASSWORD:Lcom/dropbox/core/v2/sharing/Visibility;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/Visibility;
    goto :goto_1

    .line 122
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/Visibility;
    :cond_6
    const-string v3, "shared_folder_only"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 123
    sget-object v2, Lcom/dropbox/core/v2/sharing/Visibility;->SHARED_FOLDER_ONLY:Lcom/dropbox/core/v2/sharing/Visibility;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/Visibility;
    goto :goto_1

    .line 126
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/Visibility;
    :cond_7
    sget-object v2, Lcom/dropbox/core/v2/sharing/Visibility;->OTHER:Lcom/dropbox/core/v2/sharing/Visibility;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/Visibility;
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
    .line 60
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/Visibility;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/Visibility;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/Visibility;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lcom/dropbox/core/v2/sharing/Visibility$1;->$SwitchMap$com$dropbox$core$v2$sharing$Visibility:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/Visibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 67
    :pswitch_0
    const-string v0, "public"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_1
    const-string v0, "team_only"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_2
    const-string v0, "password"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :pswitch_3
    const-string v0, "team_and_password"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_4
    const-string v0, "shared_folder_only"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 65
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
    .line 60
    check-cast p1, Lcom/dropbox/core/v2/sharing/Visibility;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/Visibility;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
