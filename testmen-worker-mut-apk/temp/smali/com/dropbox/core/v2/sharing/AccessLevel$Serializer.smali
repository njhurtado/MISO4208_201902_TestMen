.class Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "AccessLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/AccessLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/AccessLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 89
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 97
    :goto_0
    if-nez v1, :cond_1

    .line 98
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 93
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 94
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 95
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 100
    :cond_1
    const-string v3, "owner"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    sget-object v2, Lcom/dropbox/core/v2/sharing/AccessLevel;->OWNER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 115
    .local v2, "value":Lcom/dropbox/core/v2/sharing/AccessLevel;
    :goto_1
    if-nez v0, :cond_2

    .line 116
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 117
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 119
    :cond_2
    return-object v2

    .line 103
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/AccessLevel;
    :cond_3
    const-string v3, "editor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    sget-object v2, Lcom/dropbox/core/v2/sharing/AccessLevel;->EDITOR:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/AccessLevel;
    goto :goto_1

    .line 106
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/AccessLevel;
    :cond_4
    const-string v3, "viewer"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 107
    sget-object v2, Lcom/dropbox/core/v2/sharing/AccessLevel;->VIEWER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/AccessLevel;
    goto :goto_1

    .line 109
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/AccessLevel;
    :cond_5
    const-string v3, "viewer_no_comment"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 110
    sget-object v2, Lcom/dropbox/core/v2/sharing/AccessLevel;->VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/AccessLevel;
    goto :goto_1

    .line 113
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/AccessLevel;
    :cond_6
    sget-object v2, Lcom/dropbox/core/v2/sharing/AccessLevel;->OTHER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/AccessLevel;
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
    .line 54
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AccessLevel;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$1;->$SwitchMap$com$dropbox$core$v2$sharing$AccessLevel:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/AccessLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 77
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 61
    :pswitch_0
    const-string v0, "owner"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_1
    const-string v0, "editor"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_2
    const-string v0, "viewer"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_3
    const-string v0, "viewer_no_comment"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 59
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
    .line 54
    check-cast p1, Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
