.class Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GetDevicesReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GetDevicesReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GetDevicesReport;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GetDevicesReport;
    .locals 10
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v5, 0x0

    .line 176
    .local v5, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 177
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 178
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v5

    .line 180
    :cond_0
    if-nez v5, :cond_b

    .line 181
    const/4 v3, 0x0

    .line 182
    .local v3, "f_startDate":Ljava/lang/String;
    const/4 v0, 0x0

    .line 183
    .local v0, "f_active1Day":Lcom/dropbox/core/v2/team/DevicesActive;
    const/4 v2, 0x0

    .line 184
    .local v2, "f_active7Day":Lcom/dropbox/core/v2/team/DevicesActive;
    const/4 v1, 0x0

    .line 185
    .local v1, "f_active28Day":Lcom/dropbox/core/v2/team/DevicesActive;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_5

    .line 186
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 188
    const-string v7, "start_date"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 189
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_startDate":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_startDate":Ljava/lang/String;
    goto :goto_0

    .line 191
    :cond_1
    const-string v7, "active_1_day"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 192
    sget-object v7, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DevicesActive$Serializer;

    invoke-virtual {v7, p1}, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_active1Day":Lcom/dropbox/core/v2/team/DevicesActive;
    check-cast v0, Lcom/dropbox/core/v2/team/DevicesActive;

    .restart local v0    # "f_active1Day":Lcom/dropbox/core/v2/team/DevicesActive;
    goto :goto_0

    .line 194
    :cond_2
    const-string v7, "active_7_day"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 195
    sget-object v7, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DevicesActive$Serializer;

    invoke-virtual {v7, p1}, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_active7Day":Lcom/dropbox/core/v2/team/DevicesActive;
    check-cast v2, Lcom/dropbox/core/v2/team/DevicesActive;

    .restart local v2    # "f_active7Day":Lcom/dropbox/core/v2/team/DevicesActive;
    goto :goto_0

    .line 197
    :cond_3
    const-string v7, "active_28_day"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 198
    sget-object v7, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DevicesActive$Serializer;

    invoke-virtual {v7, p1}, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_active28Day":Lcom/dropbox/core/v2/team/DevicesActive;
    check-cast v1, Lcom/dropbox/core/v2/team/DevicesActive;

    .restart local v1    # "f_active28Day":Lcom/dropbox/core/v2/team/DevicesActive;
    goto :goto_0

    .line 201
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 204
    .end local v4    # "field":Ljava/lang/String;
    :cond_5
    if-nez v3, :cond_6

    .line 205
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"start_date\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 207
    :cond_6
    if-nez v0, :cond_7

    .line 208
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"active_1_day\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 210
    :cond_7
    if-nez v2, :cond_8

    .line 211
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"active_7_day\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 213
    :cond_8
    if-nez v1, :cond_9

    .line 214
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"active_28_day\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 216
    :cond_9
    new-instance v6, Lcom/dropbox/core/v2/team/GetDevicesReport;

    invoke-direct {v6, v3, v0, v2, v1}, Lcom/dropbox/core/v2/team/GetDevicesReport;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/team/DevicesActive;Lcom/dropbox/core/v2/team/DevicesActive;Lcom/dropbox/core/v2/team/DevicesActive;)V

    .line 221
    .local v6, "value":Lcom/dropbox/core/v2/team/GetDevicesReport;
    if-nez p2, :cond_a

    .line 222
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 224
    :cond_a
    return-object v6

    .line 219
    .end local v0    # "f_active1Day":Lcom/dropbox/core/v2/team/DevicesActive;
    .end local v1    # "f_active28Day":Lcom/dropbox/core/v2/team/DevicesActive;
    .end local v2    # "f_active7Day":Lcom/dropbox/core/v2/team/DevicesActive;
    .end local v3    # "f_startDate":Ljava/lang/String;
    .end local v6    # "value":Lcom/dropbox/core/v2/team/GetDevicesReport;
    :cond_b
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No subtype found that matches tag: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7
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
    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GetDevicesReport;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GetDevicesReport;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/GetDevicesReport;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 156
    if-nez p3, :cond_0

    .line 157
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 159
    :cond_0
    const-string v0, "start_date"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetDevicesReport;->startDate:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 161
    const-string v0, "active_1_day"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DevicesActive$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetDevicesReport;->active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 163
    const-string v0, "active_7_day"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DevicesActive$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetDevicesReport;->active7Day:Lcom/dropbox/core/v2/team/DevicesActive;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 165
    const-string v0, "active_28_day"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DevicesActive$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetDevicesReport;->active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/DevicesActive$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 167
    if-nez p3, :cond_1

    .line 168
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 170
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
    .line 151
    check-cast p1, Lcom/dropbox/core/v2/team/GetDevicesReport;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;->serialize(Lcom/dropbox/core/v2/team/GetDevicesReport;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
