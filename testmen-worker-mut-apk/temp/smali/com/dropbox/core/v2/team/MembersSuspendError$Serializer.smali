.class Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MembersSuspendError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MembersSuspendError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersSuspendError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersSuspendError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 96
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 104
    :goto_0
    if-nez v1, :cond_1

    .line 105
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 100
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 101
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 102
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 107
    :cond_1
    const-string v3, "user_not_found"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSuspendError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersSuspendError;

    .line 128
    .local v2, "value":Lcom/dropbox/core/v2/team/MembersSuspendError;
    :goto_1
    if-nez v0, :cond_2

    .line 129
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 130
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 132
    :cond_2
    return-object v2

    .line 110
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSuspendError;
    :cond_3
    const-string v3, "user_not_in_team"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 111
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSuspendError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersSuspendError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSuspendError;
    goto :goto_1

    .line 113
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSuspendError;
    :cond_4
    const-string v3, "other"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSuspendError;->OTHER:Lcom/dropbox/core/v2/team/MembersSuspendError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSuspendError;
    goto :goto_1

    .line 116
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSuspendError;
    :cond_5
    const-string v3, "suspend_inactive_user"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 117
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSuspendError;->SUSPEND_INACTIVE_USER:Lcom/dropbox/core/v2/team/MembersSuspendError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSuspendError;
    goto :goto_1

    .line 119
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSuspendError;
    :cond_6
    const-string v3, "suspend_last_admin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 120
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSuspendError;->SUSPEND_LAST_ADMIN:Lcom/dropbox/core/v2/team/MembersSuspendError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSuspendError;
    goto :goto_1

    .line 122
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSuspendError;
    :cond_7
    const-string v3, "team_license_limit"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 123
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSuspendError;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MembersSuspendError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSuspendError;
    goto :goto_1

    .line 126
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSuspendError;
    :cond_8
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
    .line 53
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersSuspendError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersSuspendError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MembersSuspendError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError$1;->$SwitchMap$com$dropbox$core$v2$team$MembersSuspendError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
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

    .line 60
    :pswitch_0
    const-string v0, "user_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 64
    :pswitch_1
    const-string v0, "user_not_in_team"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_2
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_3
    const-string v0, "suspend_inactive_user"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :pswitch_4
    const-string v0, "suspend_last_admin"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_5
    const-string v0, "team_license_limit"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 58
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
    .line 53
    check-cast p1, Lcom/dropbox/core/v2/team/MembersSuspendError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersSuspendError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
