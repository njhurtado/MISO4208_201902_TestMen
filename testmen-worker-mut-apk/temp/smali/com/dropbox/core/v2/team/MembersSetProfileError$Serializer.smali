.class Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MembersSetProfileError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MembersSetProfileError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersSetProfileError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersSetProfileError;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 134
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 142
    :goto_0
    if-nez v1, :cond_1

    .line 143
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 138
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 139
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 140
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 145
    :cond_1
    const-string v3, "user_not_found"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetProfileError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .line 178
    .local v2, "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    :goto_1
    if-nez v0, :cond_2

    .line 179
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 180
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 182
    :cond_2
    return-object v2

    .line 148
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    :cond_3
    const-string v3, "user_not_in_team"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 149
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetProfileError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    goto :goto_1

    .line 151
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    :cond_4
    const-string v3, "external_id_and_new_external_id_unsafe"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 152
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetProfileError;->EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    goto :goto_1

    .line 154
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    :cond_5
    const-string v3, "no_new_data_specified"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 155
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetProfileError;->NO_NEW_DATA_SPECIFIED:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    goto :goto_1

    .line 157
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    :cond_6
    const-string v3, "email_reserved_for_other_user"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 158
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetProfileError;->EMAIL_RESERVED_FOR_OTHER_USER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    goto :goto_1

    .line 160
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    :cond_7
    const-string v3, "external_id_used_by_other_user"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 161
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetProfileError;->EXTERNAL_ID_USED_BY_OTHER_USER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    goto :goto_1

    .line 163
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    :cond_8
    const-string v3, "set_profile_disallowed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 164
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetProfileError;->SET_PROFILE_DISALLOWED:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    goto :goto_1

    .line 166
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    :cond_9
    const-string v3, "param_cannot_be_empty"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 167
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetProfileError;->PARAM_CANNOT_BE_EMPTY:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    goto :goto_1

    .line 169
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    :cond_a
    const-string v3, "persistent_id_disabled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 170
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetProfileError;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    goto :goto_1

    .line 172
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    :cond_b
    const-string v3, "persistent_id_used_by_other_user"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 173
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetProfileError;->PERSISTENT_ID_USED_BY_OTHER_USER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    goto :goto_1

    .line 176
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
    :cond_c
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetProfileError;->OTHER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileError;
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
    .line 75
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersSetProfileError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersSetProfileError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MembersSetProfileError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError$1;->$SwitchMap$com$dropbox$core$v2$team$MembersSetProfileError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 122
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 82
    :pswitch_0
    const-string v0, "user_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_1
    const-string v0, "user_not_in_team"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_2
    const-string v0, "external_id_and_new_external_id_unsafe"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :pswitch_3
    const-string v0, "no_new_data_specified"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_4
    const-string v0, "email_reserved_for_other_user"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :pswitch_5
    const-string v0, "external_id_used_by_other_user"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_6
    const-string v0, "set_profile_disallowed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_7
    const-string v0, "param_cannot_be_empty"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_8
    const-string v0, "persistent_id_disabled"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :pswitch_9
    const-string v0, "persistent_id_used_by_other_user"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 80
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
    .line 75
    check-cast p1, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersSetProfileError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
