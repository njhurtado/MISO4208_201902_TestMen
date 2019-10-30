.class Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SharedFolderAccessError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 86
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 94
    :goto_0
    if-nez v1, :cond_1

    .line 95
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 90
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 91
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 92
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 97
    :cond_1
    const-string v3, "invalid_id"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    sget-object v2, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->INVALID_ID:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .line 112
    .local v2, "value":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    :goto_1
    if-nez v0, :cond_2

    .line 113
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 114
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 116
    :cond_2
    return-object v2

    .line 100
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    :cond_3
    const-string v3, "not_a_member"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    sget-object v2, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    goto :goto_1

    .line 103
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    :cond_4
    const-string v3, "email_unverified"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 104
    sget-object v2, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    goto :goto_1

    .line 106
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    :cond_5
    const-string v3, "unmounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 107
    sget-object v2, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->UNMOUNTED:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    goto :goto_1

    .line 110
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    :cond_6
    sget-object v2, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
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
    .line 51
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharedFolderAccessError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 74
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 58
    :pswitch_0
    const-string v0, "invalid_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_1
    const-string v0, "not_a_member"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :pswitch_2
    const-string v0, "email_unverified"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_3
    const-string v0, "unmounted"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
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
    .line 51
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
