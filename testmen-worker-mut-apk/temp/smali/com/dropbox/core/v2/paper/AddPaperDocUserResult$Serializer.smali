.class Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "AddPaperDocUserResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 109
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 117
    :goto_0
    if-nez v1, :cond_1

    .line 118
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 113
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 114
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 115
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 120
    :cond_1
    const-string v3, "success"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    sget-object v2, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->SUCCESS:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .line 144
    .local v2, "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    :goto_1
    if-nez v0, :cond_2

    .line 145
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 146
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 148
    :cond_2
    return-object v2

    .line 123
    .end local v2    # "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    :cond_3
    const-string v3, "unknown_error"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 124
    sget-object v2, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->UNKNOWN_ERROR:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .restart local v2    # "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    goto :goto_1

    .line 126
    .end local v2    # "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    :cond_4
    const-string v3, "sharing_outside_team_disabled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 127
    sget-object v2, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->SHARING_OUTSIDE_TEAM_DISABLED:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .restart local v2    # "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    goto :goto_1

    .line 129
    .end local v2    # "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    :cond_5
    const-string v3, "daily_limit_reached"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 130
    sget-object v2, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->DAILY_LIMIT_REACHED:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .restart local v2    # "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    goto :goto_1

    .line 132
    .end local v2    # "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    :cond_6
    const-string v3, "user_is_owner"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 133
    sget-object v2, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->USER_IS_OWNER:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .restart local v2    # "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    goto :goto_1

    .line 135
    .end local v2    # "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    :cond_7
    const-string v3, "failed_user_data_retrieval"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 136
    sget-object v2, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->FAILED_USER_DATA_RETRIEVAL:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .restart local v2    # "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    goto :goto_1

    .line 138
    .end local v2    # "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    :cond_8
    const-string v3, "permission_already_granted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 139
    sget-object v2, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->PERMISSION_ALREADY_GRANTED:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .restart local v2    # "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    goto :goto_1

    .line 142
    .end local v2    # "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    :cond_9
    sget-object v2, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->OTHER:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .restart local v2    # "value":Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
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
    .line 62
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$1;->$SwitchMap$com$dropbox$core$v2$paper$AddPaperDocUserResult:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 97
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 69
    :pswitch_0
    const-string v0, "success"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_1
    const-string v0, "unknown_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_2
    const-string v0, "sharing_outside_team_disabled"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_3
    const-string v0, "daily_limit_reached"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_4
    const-string v0, "user_is_owner"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_5
    const-string v0, "failed_user_data_retrieval"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_6
    const-string v0, "permission_already_granted"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 67
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
    .line 62
    check-cast p1, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->serialize(Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
