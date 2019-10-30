.class Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GroupMemberSetAccessTypeError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 87
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 95
    :goto_0
    if-nez v1, :cond_1

    .line 96
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 91
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 92
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 93
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 98
    :cond_1
    const-string v3, "group_not_found"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    sget-object v2, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    .line 116
    .local v2, "value":Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;
    :goto_1
    if-nez v0, :cond_2

    .line 117
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 118
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 120
    :cond_2
    return-object v2

    .line 101
    .end local v2    # "value":Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;
    :cond_3
    const-string v3, "other"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    sget-object v2, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->OTHER:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;
    goto :goto_1

    .line 104
    .end local v2    # "value":Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;
    :cond_4
    const-string v3, "system_managed_group_disallowed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 105
    sget-object v2, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;
    goto :goto_1

    .line 107
    .end local v2    # "value":Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;
    :cond_5
    const-string v3, "member_not_in_group"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 108
    sget-object v2, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;
    goto :goto_1

    .line 110
    .end local v2    # "value":Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;
    :cond_6
    const-string v3, "user_cannot_be_manager_of_company_managed_group"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 111
    sget-object v2, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;
    goto :goto_1

    .line 114
    .end local v2    # "value":Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;
    :cond_7
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
    .line 48
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$1;->$SwitchMap$com$dropbox$core$v2$team$GroupMemberSetAccessTypeError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
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

    .line 55
    :pswitch_0
    const-string v0, "group_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 59
    :pswitch_1
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_2
    const-string v0, "system_managed_group_disallowed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_3
    const-string v0, "member_not_in_group"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_4
    const-string v0, "user_cannot_be_manager_of_company_managed_group"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
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
    .line 48
    check-cast p1, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
