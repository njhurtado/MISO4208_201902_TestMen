.class Lcom/dropbox/core/v2/team/GroupUpdateError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GroupUpdateError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GroupUpdateError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GroupUpdateError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GroupUpdateError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/dropbox/core/v2/team/GroupUpdateError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupUpdateError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupUpdateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupUpdateError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/GroupUpdateError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 95
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupUpdateError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 103
    :goto_0
    if-nez v1, :cond_1

    .line 104
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 99
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 100
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupUpdateError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 101
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupUpdateError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 106
    :cond_1
    const-string v3, "group_not_found"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 107
    sget-object v2, Lcom/dropbox/core/v2/team/GroupUpdateError;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupUpdateError;

    .line 127
    .local v2, "value":Lcom/dropbox/core/v2/team/GroupUpdateError;
    :goto_1
    if-nez v0, :cond_2

    .line 128
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupUpdateError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 129
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupUpdateError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 131
    :cond_2
    return-object v2

    .line 109
    .end local v2    # "value":Lcom/dropbox/core/v2/team/GroupUpdateError;
    :cond_3
    const-string v3, "other"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 110
    sget-object v2, Lcom/dropbox/core/v2/team/GroupUpdateError;->OTHER:Lcom/dropbox/core/v2/team/GroupUpdateError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/GroupUpdateError;
    goto :goto_1

    .line 112
    .end local v2    # "value":Lcom/dropbox/core/v2/team/GroupUpdateError;
    :cond_4
    const-string v3, "system_managed_group_disallowed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 113
    sget-object v2, Lcom/dropbox/core/v2/team/GroupUpdateError;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupUpdateError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/GroupUpdateError;
    goto :goto_1

    .line 115
    .end local v2    # "value":Lcom/dropbox/core/v2/team/GroupUpdateError;
    :cond_5
    const-string v3, "group_name_already_used"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 116
    sget-object v2, Lcom/dropbox/core/v2/team/GroupUpdateError;->GROUP_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/GroupUpdateError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/GroupUpdateError;
    goto :goto_1

    .line 118
    .end local v2    # "value":Lcom/dropbox/core/v2/team/GroupUpdateError;
    :cond_6
    const-string v3, "group_name_invalid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 119
    sget-object v2, Lcom/dropbox/core/v2/team/GroupUpdateError;->GROUP_NAME_INVALID:Lcom/dropbox/core/v2/team/GroupUpdateError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/GroupUpdateError;
    goto :goto_1

    .line 121
    .end local v2    # "value":Lcom/dropbox/core/v2/team/GroupUpdateError;
    :cond_7
    const-string v3, "external_id_already_in_use"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 122
    sget-object v2, Lcom/dropbox/core/v2/team/GroupUpdateError;->EXTERNAL_ID_ALREADY_IN_USE:Lcom/dropbox/core/v2/team/GroupUpdateError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/GroupUpdateError;
    goto :goto_1

    .line 125
    .end local v2    # "value":Lcom/dropbox/core/v2/team/GroupUpdateError;
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
    .line 52
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/GroupUpdateError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/GroupUpdateError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GroupUpdateError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/GroupUpdateError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/dropbox/core/v2/team/GroupUpdateError$1;->$SwitchMap$com$dropbox$core$v2$team$GroupUpdateError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/GroupUpdateError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
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

    .line 59
    :pswitch_0
    const-string v0, "group_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 63
    :pswitch_1
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_2
    const-string v0, "system_managed_group_disallowed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_3
    const-string v0, "group_name_already_used"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_4
    const-string v0, "group_name_invalid"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :pswitch_5
    const-string v0, "external_id_already_in_use"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 57
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
    .line 52
    check-cast p1, Lcom/dropbox/core/v2/team/GroupUpdateError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GroupUpdateError$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupUpdateError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
