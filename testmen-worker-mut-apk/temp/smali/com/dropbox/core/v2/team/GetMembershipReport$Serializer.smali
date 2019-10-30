.class Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GetMembershipReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GetMembershipReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GetMembershipReport;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GetMembershipReport;
    .locals 12
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 241
    const/4 v8, 0x0

    .line 242
    .local v8, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 243
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 244
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v8

    .line 246
    :cond_0
    if-nez v8, :cond_f

    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, "f_startDate":Ljava/lang/String;
    const/4 v2, 0x0

    .line 249
    .local v2, "f_teamSize":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 250
    .local v3, "f_pendingInvites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 251
    .local v4, "f_membersJoined":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 252
    .local v5, "f_suspendedMembers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 253
    .local v6, "f_licenses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v9, v10, :cond_7

    .line 254
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 256
    const-string v9, "start_date"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 257
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_startDate":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_startDate":Ljava/lang/String;
    goto :goto_0

    .line 259
    :cond_1
    const-string v9, "team_size"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 260
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_teamSize":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v2, Ljava/util/List;

    .restart local v2    # "f_teamSize":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    .line 262
    :cond_2
    const-string v9, "pending_invites"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 263
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_pendingInvites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v3, Ljava/util/List;

    .restart local v3    # "f_pendingInvites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    .line 265
    :cond_3
    const-string v9, "members_joined"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 266
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_membersJoined":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v4, Ljava/util/List;

    .restart local v4    # "f_membersJoined":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    .line 268
    :cond_4
    const-string v9, "suspended_members"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 269
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_suspendedMembers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v5, Ljava/util/List;

    .restart local v5    # "f_suspendedMembers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 271
    :cond_5
    const-string v9, "licenses"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 272
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_licenses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v6, Ljava/util/List;

    .restart local v6    # "f_licenses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 275
    :cond_6
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 278
    .end local v7    # "field":Ljava/lang/String;
    :cond_7
    if-nez v1, :cond_8

    .line 279
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"start_date\" missing."

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9

    .line 281
    :cond_8
    if-nez v2, :cond_9

    .line 282
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"team_size\" missing."

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9

    .line 284
    :cond_9
    if-nez v3, :cond_a

    .line 285
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"pending_invites\" missing."

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9

    .line 287
    :cond_a
    if-nez v4, :cond_b

    .line 288
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"members_joined\" missing."

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9

    .line 290
    :cond_b
    if-nez v5, :cond_c

    .line 291
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"suspended_members\" missing."

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9

    .line 293
    :cond_c
    if-nez v6, :cond_d

    .line 294
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"licenses\" missing."

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9

    .line 296
    :cond_d
    new-instance v0, Lcom/dropbox/core/v2/team/GetMembershipReport;

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/team/GetMembershipReport;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 301
    .local v0, "value":Lcom/dropbox/core/v2/team/GetMembershipReport;
    if-nez p2, :cond_e

    .line 302
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 304
    :cond_e
    return-object v0

    .line 299
    .end local v0    # "value":Lcom/dropbox/core/v2/team/GetMembershipReport;
    .end local v1    # "f_startDate":Ljava/lang/String;
    .end local v2    # "f_teamSize":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3    # "f_pendingInvites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "f_membersJoined":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v5    # "f_suspendedMembers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v6    # "f_licenses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_f
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No subtype found that matches tag: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9
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
    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GetMembershipReport;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GetMembershipReport;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/GetMembershipReport;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 218
    if-nez p3, :cond_0

    .line 219
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 221
    :cond_0
    const-string v0, "start_date"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetMembershipReport;->startDate:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 223
    const-string v0, "team_size"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetMembershipReport;->teamSize:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 225
    const-string v0, "pending_invites"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetMembershipReport;->pendingInvites:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 227
    const-string v0, "members_joined"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetMembershipReport;->membersJoined:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 229
    const-string v0, "suspended_members"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetMembershipReport;->suspendedMembers:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 231
    const-string v0, "licenses"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetMembershipReport;->licenses:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 233
    if-nez p3, :cond_1

    .line 234
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 236
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
    .line 213
    check-cast p1, Lcom/dropbox/core/v2/team/GetMembershipReport;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;->serialize(Lcom/dropbox/core/v2/team/GetMembershipReport;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
