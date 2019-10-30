.class Lcom/dropbox/core/v2/users/FullTeam$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FullTeam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/users/FullTeam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/users/FullTeam;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/users/FullTeam$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/dropbox/core/v2/users/FullTeam$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/FullTeam$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/FullTeam$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/users/FullTeam;
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v4, 0x0

    .line 143
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 144
    invoke-static {p1}, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 145
    invoke-static {p1}, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 147
    :cond_0
    if-nez v4, :cond_9

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "f_id":Ljava/lang/String;
    const/4 v1, 0x0

    .line 150
    .local v1, "f_name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 151
    .local v2, "f_sharingPolicies":Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 152
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 154
    const-string v6, "id"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 155
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_id":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_id":Ljava/lang/String;
    goto :goto_0

    .line 157
    :cond_1
    const-string v6, "name"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 158
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_name":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_name":Ljava/lang/String;
    goto :goto_0

    .line 160
    :cond_2
    const-string v6, "sharing_policies"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 161
    sget-object v6, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;

    invoke-virtual {v6, p1}, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_sharingPolicies":Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;
    check-cast v2, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;

    .restart local v2    # "f_sharingPolicies":Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;
    goto :goto_0

    .line 164
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 167
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v0, :cond_5

    .line 168
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"id\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 170
    :cond_5
    if-nez v1, :cond_6

    .line 171
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"name\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 173
    :cond_6
    if-nez v2, :cond_7

    .line 174
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"sharing_policies\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 176
    :cond_7
    new-instance v5, Lcom/dropbox/core/v2/users/FullTeam;

    invoke-direct {v5, v0, v1, v2}, Lcom/dropbox/core/v2/users/FullTeam;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;)V

    .line 181
    .local v5, "value":Lcom/dropbox/core/v2/users/FullTeam;
    if-nez p2, :cond_8

    .line 182
    invoke-static {p1}, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 184
    :cond_8
    return-object v5

    .line 179
    .end local v0    # "f_id":Ljava/lang/String;
    .end local v1    # "f_name":Ljava/lang/String;
    .end local v2    # "f_sharingPolicies":Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;
    .end local v5    # "value":Lcom/dropbox/core/v2/users/FullTeam;
    :cond_9
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No subtype found that matches tag: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/users/FullTeam;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/users/FullTeam;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/users/FullTeam;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 125
    if-nez p3, :cond_0

    .line 126
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 128
    :cond_0
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullTeam;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 130
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullTeam;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 132
    const-string v0, "sharing_policies"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullTeam;->sharingPolicies:Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 134
    if-nez p3, :cond_1

    .line 135
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 137
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 120
    check-cast p1, Lcom/dropbox/core/v2/users/FullTeam;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->serialize(Lcom/dropbox/core/v2/users/FullTeam;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
