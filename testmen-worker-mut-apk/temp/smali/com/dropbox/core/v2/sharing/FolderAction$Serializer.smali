.class Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "FolderAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/FolderAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/FolderAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FolderAction;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 158
    const/4 v0, 0x1

    .line 159
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 167
    :goto_0
    if-nez v1, :cond_1

    .line 168
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 163
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 164
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 165
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 170
    :cond_1
    const-string v3, "change_options"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    sget-object v2, Lcom/dropbox/core/v2/sharing/FolderAction;->CHANGE_OPTIONS:Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 212
    .local v2, "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    :goto_1
    if-nez v0, :cond_2

    .line 213
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 214
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 216
    :cond_2
    return-object v2

    .line 173
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_3
    const-string v3, "disable_viewer_info"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 174
    sget-object v2, Lcom/dropbox/core/v2/sharing/FolderAction;->DISABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FolderAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    goto :goto_1

    .line 176
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_4
    const-string v3, "edit_contents"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 177
    sget-object v2, Lcom/dropbox/core/v2/sharing/FolderAction;->EDIT_CONTENTS:Lcom/dropbox/core/v2/sharing/FolderAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    goto :goto_1

    .line 179
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_5
    const-string v3, "enable_viewer_info"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 180
    sget-object v2, Lcom/dropbox/core/v2/sharing/FolderAction;->ENABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FolderAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    goto :goto_1

    .line 182
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_6
    const-string v3, "invite_editor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 183
    sget-object v2, Lcom/dropbox/core/v2/sharing/FolderAction;->INVITE_EDITOR:Lcom/dropbox/core/v2/sharing/FolderAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    goto :goto_1

    .line 185
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_7
    const-string v3, "invite_viewer"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 186
    sget-object v2, Lcom/dropbox/core/v2/sharing/FolderAction;->INVITE_VIEWER:Lcom/dropbox/core/v2/sharing/FolderAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    goto :goto_1

    .line 188
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_8
    const-string v3, "invite_viewer_no_comment"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 189
    sget-object v2, Lcom/dropbox/core/v2/sharing/FolderAction;->INVITE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/FolderAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    goto :goto_1

    .line 191
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_9
    const-string v3, "relinquish_membership"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 192
    sget-object v2, Lcom/dropbox/core/v2/sharing/FolderAction;->RELINQUISH_MEMBERSHIP:Lcom/dropbox/core/v2/sharing/FolderAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    goto :goto_1

    .line 194
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_a
    const-string v3, "unmount"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 195
    sget-object v2, Lcom/dropbox/core/v2/sharing/FolderAction;->UNMOUNT:Lcom/dropbox/core/v2/sharing/FolderAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    goto :goto_1

    .line 197
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_b
    const-string v3, "unshare"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 198
    sget-object v2, Lcom/dropbox/core/v2/sharing/FolderAction;->UNSHARE:Lcom/dropbox/core/v2/sharing/FolderAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    goto :goto_1

    .line 200
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_c
    const-string v3, "leave_a_copy"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 201
    sget-object v2, Lcom/dropbox/core/v2/sharing/FolderAction;->LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/FolderAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    goto :goto_1

    .line 203
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_d
    const-string v3, "share_link"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 204
    sget-object v2, Lcom/dropbox/core/v2/sharing/FolderAction;->SHARE_LINK:Lcom/dropbox/core/v2/sharing/FolderAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    goto/16 :goto_1

    .line 206
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_e
    const-string v3, "create_link"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 207
    sget-object v2, Lcom/dropbox/core/v2/sharing/FolderAction;->CREATE_LINK:Lcom/dropbox/core/v2/sharing/FolderAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    goto/16 :goto_1

    .line 210
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_f
    sget-object v2, Lcom/dropbox/core/v2/sharing/FolderAction;->OTHER:Lcom/dropbox/core/v2/sharing/FolderAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/FolderAction;
    goto/16 :goto_1
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
    .line 88
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FolderAction;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/FolderAction;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/FolderAction;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 93
    sget-object v0, Lcom/dropbox/core/v2/sharing/FolderAction$1;->$SwitchMap$com$dropbox$core$v2$sharing$FolderAction:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/FolderAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 95
    :pswitch_0
    const-string v0, "change_options"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_1
    const-string v0, "disable_viewer_info"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_2
    const-string v0, "edit_contents"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :pswitch_3
    const-string v0, "enable_viewer_info"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_4
    const-string v0, "invite_editor"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_5
    const-string v0, "invite_viewer"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :pswitch_6
    const-string v0, "invite_viewer_no_comment"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_7
    const-string v0, "relinquish_membership"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :pswitch_8
    const-string v0, "unmount"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_9
    const-string v0, "unshare"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_a
    const-string v0, "leave_a_copy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_b
    const-string v0, "share_link"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_c
    const-string v0, "create_link"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
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
    .line 88
    check-cast p1, Lcom/dropbox/core/v2/sharing/FolderAction;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FolderAction;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
