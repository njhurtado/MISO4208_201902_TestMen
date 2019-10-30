.class Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SharingFileAccessError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharingFileAccessError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 97
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 105
    :goto_0
    if-nez v1, :cond_1

    .line 106
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 101
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 102
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 103
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 108
    :cond_1
    const-string v3, "no_permission"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    sget-object v2, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 126
    .local v2, "value":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    :goto_1
    if-nez v0, :cond_2

    .line 127
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 128
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 130
    :cond_2
    return-object v2

    .line 111
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    :cond_3
    const-string v3, "invalid_file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 112
    sget-object v2, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->INVALID_FILE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    goto :goto_1

    .line 114
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    :cond_4
    const-string v3, "is_folder"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 115
    sget-object v2, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->IS_FOLDER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    goto :goto_1

    .line 117
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    :cond_5
    const-string v3, "inside_public_folder"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 118
    sget-object v2, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    goto :goto_1

    .line 120
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    :cond_6
    const-string v3, "inside_osx_package"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 121
    sget-object v2, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    goto :goto_1

    .line 124
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    :cond_7
    sget-object v2, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->OTHER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
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
    .line 58
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharingFileAccessError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 65
    :pswitch_0
    const-string v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_1
    const-string v0, "invalid_file"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_2
    const-string v0, "is_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_3
    const-string v0, "inside_public_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_4
    const-string v0, "inside_osx_package"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 63
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
    .line 58
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
