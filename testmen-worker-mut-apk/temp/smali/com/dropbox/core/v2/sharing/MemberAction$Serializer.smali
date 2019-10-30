.class Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MemberAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/MemberAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/MemberAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/MemberAction;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 102
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 110
    :goto_0
    if-nez v1, :cond_1

    .line 111
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 106
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 107
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 108
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 113
    :cond_1
    const-string v3, "leave_a_copy"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    sget-object v2, Lcom/dropbox/core/v2/sharing/MemberAction;->LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 134
    .local v2, "value":Lcom/dropbox/core/v2/sharing/MemberAction;
    :goto_1
    if-nez v0, :cond_2

    .line 135
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 136
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 138
    :cond_2
    return-object v2

    .line 116
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/MemberAction;
    :cond_3
    const-string v3, "make_editor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    sget-object v2, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_EDITOR:Lcom/dropbox/core/v2/sharing/MemberAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/MemberAction;
    goto :goto_1

    .line 119
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/MemberAction;
    :cond_4
    const-string v3, "make_owner"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 120
    sget-object v2, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_OWNER:Lcom/dropbox/core/v2/sharing/MemberAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/MemberAction;
    goto :goto_1

    .line 122
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/MemberAction;
    :cond_5
    const-string v3, "make_viewer"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 123
    sget-object v2, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_VIEWER:Lcom/dropbox/core/v2/sharing/MemberAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/MemberAction;
    goto :goto_1

    .line 125
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/MemberAction;
    :cond_6
    const-string v3, "make_viewer_no_comment"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 126
    sget-object v2, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/MemberAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/MemberAction;
    goto :goto_1

    .line 128
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/MemberAction;
    :cond_7
    const-string v3, "remove"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 129
    sget-object v2, Lcom/dropbox/core/v2/sharing/MemberAction;->REMOVE:Lcom/dropbox/core/v2/sharing/MemberAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/MemberAction;
    goto :goto_1

    .line 132
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/MemberAction;
    :cond_8
    sget-object v2, Lcom/dropbox/core/v2/sharing/MemberAction;->OTHER:Lcom/dropbox/core/v2/sharing/MemberAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/MemberAction;
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
    .line 59
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/MemberAction;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/MemberAction;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/MemberAction;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAction$1;->$SwitchMap$com$dropbox$core$v2$sharing$MemberAction:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/MemberAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 90
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 66
    :pswitch_0
    const-string v0, "leave_a_copy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_1
    const-string v0, "make_editor"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_2
    const-string v0, "make_owner"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_3
    const-string v0, "make_viewer"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_4
    const-string v0, "make_viewer_no_comment"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_5
    const-string v0, "remove"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    nop

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
    .line 59
    check-cast p1, Lcom/dropbox/core/v2/sharing/MemberAction;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberAction;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
