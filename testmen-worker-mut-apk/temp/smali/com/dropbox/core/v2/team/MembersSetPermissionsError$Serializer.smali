.class Lcom/dropbox/core/v2/team/MembersSetPermissionsError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MembersSetPermissionsError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MembersSetPermissionsError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersSetPermissionsError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersSetPermissionsError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetPermissionsError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersSetPermissionsError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetPermissionsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSetPermissionsError$Serializer;

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
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersSetPermissionsError;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 92
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetPermissionsError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 100
    :goto_0
    if-nez v1, :cond_1

    .line 101
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 96
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 97
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetPermissionsError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 98
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetPermissionsError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 103
    :cond_1
    const-string v3, "user_not_found"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetPermissionsError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersSetPermissionsError;

    .line 121
    .local v2, "value":Lcom/dropbox/core/v2/team/MembersSetPermissionsError;
    :goto_1
    if-nez v0, :cond_2

    .line 122
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetPermissionsError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 123
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetPermissionsError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 125
    :cond_2
    return-object v2

    .line 106
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetPermissionsError;
    :cond_3
    const-string v3, "last_admin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 107
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetPermissionsError;->LAST_ADMIN:Lcom/dropbox/core/v2/team/MembersSetPermissionsError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetPermissionsError;
    goto :goto_1

    .line 109
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetPermissionsError;
    :cond_4
    const-string v3, "user_not_in_team"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 110
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetPermissionsError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersSetPermissionsError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetPermissionsError;
    goto :goto_1

    .line 112
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetPermissionsError;
    :cond_5
    const-string v3, "cannot_set_permissions"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 113
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetPermissionsError;->CANNOT_SET_PERMISSIONS:Lcom/dropbox/core/v2/team/MembersSetPermissionsError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetPermissionsError;
    goto :goto_1

    .line 115
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetPermissionsError;
    :cond_6
    const-string v3, "team_license_limit"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 116
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetPermissionsError;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MembersSetPermissionsError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetPermissionsError;
    goto :goto_1

    .line 119
    .end local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetPermissionsError;
    :cond_7
    sget-object v2, Lcom/dropbox/core/v2/team/MembersSetPermissionsError;->OTHER:Lcom/dropbox/core/v2/team/MembersSetPermissionsError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/MembersSetPermissionsError;
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
    .line 53
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MembersSetPermissionsError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersSetPermissionsError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersSetPermissionsError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MembersSetPermissionsError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetPermissionsError$1;->$SwitchMap$com$dropbox$core$v2$team$MembersSetPermissionsError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersSetPermissionsError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 80
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 60
    :pswitch_0
    const-string v0, "user_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_1
    const-string v0, "last_admin"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_2
    const-string v0, "user_not_in_team"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_3
    const-string v0, "cannot_set_permissions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :pswitch_4
    const-string v0, "team_license_limit"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 58
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
    .line 53
    check-cast p1, Lcom/dropbox/core/v2/team/MembersSetPermissionsError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersSetPermissionsError$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersSetPermissionsError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
