.class Lcom/dropbox/core/v2/team/MembersRemoveError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MembersRemoveError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MembersRemoveError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersRemoveError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersRemoveError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersRemoveError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersRemoveError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersRemoveError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 171
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersRemoveError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 179
    :goto_0
    if-nez v1, :cond_1

    .line 180
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 175
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 176
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersRemoveError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 177
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersRemoveError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 182
    :cond_1
    const-string v3, "user_not_found"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 183
    sget-object v2, Lcom/dropbox/core/v2/team/MembersRemoveError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .line 230
    .local v2, "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    :goto_1
    if-nez v0, :cond_2

    .line 231
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersRemoveError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 232
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersRemoveError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 234
    :cond_2
    return-object v2

    .line 185
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    :cond_3
    const-string v3, "user_not_in_team"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    sget-object v2, Lcom/dropbox/core/v2/team/MembersRemoveError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    goto :goto_1

    .line 188
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    :cond_4
    const-string v3, "other"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 189
    sget-object v2, Lcom/dropbox/core/v2/team/MembersRemoveError;->OTHER:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    goto :goto_1

    .line 191
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    :cond_5
    const-string v3, "remove_last_admin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 192
    sget-object v2, Lcom/dropbox/core/v2/team/MembersRemoveError;->REMOVE_LAST_ADMIN:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    goto :goto_1

    .line 194
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    :cond_6
    const-string v3, "removed_and_transfer_dest_should_differ"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 195
    sget-object v2, Lcom/dropbox/core/v2/team/MembersRemoveError;->REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    goto :goto_1

    .line 197
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    :cond_7
    const-string v3, "removed_and_transfer_admin_should_differ"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 198
    sget-object v2, Lcom/dropbox/core/v2/team/MembersRemoveError;->REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    goto :goto_1

    .line 200
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    :cond_8
    const-string v3, "transfer_dest_user_not_found"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 201
    sget-object v2, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_DEST_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    goto :goto_1

    .line 203
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    :cond_9
    const-string v3, "transfer_dest_user_not_in_team"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 204
    sget-object v2, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_DEST_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    goto :goto_1

    .line 206
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    :cond_a
    const-string v3, "transfer_admin_user_not_found"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 207
    sget-object v2, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_ADMIN_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    goto :goto_1

    .line 209
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    :cond_b
    const-string v3, "transfer_admin_user_not_in_team"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 210
    sget-object v2, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_ADMIN_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    goto :goto_1

    .line 212
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    :cond_c
    const-string v3, "unspecified_transfer_admin_id"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 213
    sget-object v2, Lcom/dropbox/core/v2/team/MembersRemoveError;->UNSPECIFIED_TRANSFER_ADMIN_ID:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    goto :goto_1

    .line 215
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    :cond_d
    const-string v3, "transfer_admin_is_not_admin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 216
    sget-object v2, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_ADMIN_IS_NOT_ADMIN:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    goto/16 :goto_1

    .line 218
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    :cond_e
    const-string v3, "cannot_keep_account_and_transfer"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 219
    sget-object v2, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_KEEP_ACCOUNT_AND_TRANSFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    goto/16 :goto_1

    .line 221
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    :cond_f
    const-string v3, "cannot_keep_account_and_delete_data"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 222
    sget-object v2, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    goto/16 :goto_1

    .line 224
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    :cond_10
    const-string v3, "email_address_too_long_to_be_disabled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 225
    sget-object v2, Lcom/dropbox/core/v2/team/MembersRemoveError;->EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    goto/16 :goto_1

    .line 228
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersRemoveError;
    :cond_11
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
    .line 92
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MembersRemoveError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersRemoveError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersRemoveError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MembersRemoveError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError$1;->$SwitchMap$com$dropbox$core$v2$team$MembersRemoveError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersRemoveError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 159
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

    .line 99
    :pswitch_0
    const-string v0, "user_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 103
    :pswitch_1
    const-string v0, "user_not_in_team"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :pswitch_2
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_3
    const-string v0, "remove_last_admin"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_4
    const-string v0, "removed_and_transfer_dest_should_differ"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :pswitch_5
    const-string v0, "removed_and_transfer_admin_should_differ"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_6
    const-string v0, "transfer_dest_user_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :pswitch_7
    const-string v0, "transfer_dest_user_not_in_team"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_8
    const-string v0, "transfer_admin_user_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_9
    const-string v0, "transfer_admin_user_not_in_team"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_a
    const-string v0, "unspecified_transfer_admin_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_b
    const-string v0, "transfer_admin_is_not_admin"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :pswitch_c
    const-string v0, "cannot_keep_account_and_transfer"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :pswitch_d
    const-string v0, "cannot_keep_account_and_delete_data"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_e
    const-string v0, "email_address_too_long_to_be_disabled"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 97
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
        :pswitch_d
        :pswitch_e
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
    .line 92
    check-cast p1, Lcom/dropbox/core/v2/team/MembersRemoveError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersRemoveError$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersRemoveError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
