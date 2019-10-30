.class Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "PaperApiCursorError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/PaperApiCursorError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/PaperApiCursorError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 84
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 92
    :goto_0
    if-nez v1, :cond_1

    .line 93
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 88
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 89
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 90
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 95
    :cond_1
    const-string v3, "expired_cursor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    sget-object v2, Lcom/dropbox/core/v2/paper/PaperApiCursorError;->EXPIRED_CURSOR:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .line 110
    .local v2, "value":Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    :goto_1
    if-nez v0, :cond_2

    .line 111
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 112
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 114
    :cond_2
    return-object v2

    .line 98
    .end local v2    # "value":Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    :cond_3
    const-string v3, "invalid_cursor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 99
    sget-object v2, Lcom/dropbox/core/v2/paper/PaperApiCursorError;->INVALID_CURSOR:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    goto :goto_1

    .line 101
    .end local v2    # "value":Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    :cond_4
    const-string v3, "wrong_user_in_cursor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 102
    sget-object v2, Lcom/dropbox/core/v2/paper/PaperApiCursorError;->WRONG_USER_IN_CURSOR:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    goto :goto_1

    .line 104
    .end local v2    # "value":Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    :cond_5
    const-string v3, "reset"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 105
    sget-object v2, Lcom/dropbox/core/v2/paper/PaperApiCursorError;->RESET:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    goto :goto_1

    .line 108
    .end local v2    # "value":Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    :cond_6
    sget-object v2, Lcom/dropbox/core/v2/paper/PaperApiCursorError;->OTHER:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/paper/PaperApiCursorError;
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
    .line 49
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/PaperApiCursorError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperApiCursorError$1;->$SwitchMap$com$dropbox$core$v2$paper$PaperApiCursorError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/paper/PaperApiCursorError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 56
    :pswitch_0
    const-string v0, "expired_cursor"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :pswitch_1
    const-string v0, "invalid_cursor"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_2
    const-string v0, "wrong_user_in_cursor"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_3
    const-string v0, "reset"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
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
    .line 49
    check-cast p1, Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;->serialize(Lcom/dropbox/core/v2/paper/PaperApiCursorError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
