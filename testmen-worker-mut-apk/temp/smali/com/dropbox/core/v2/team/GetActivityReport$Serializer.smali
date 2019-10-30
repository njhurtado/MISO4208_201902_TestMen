.class Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GetActivityReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GetActivityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GetActivityReport;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 436
    new-instance v0, Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GetActivityReport;
    .locals 24
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 481
    const/16 v20, 0x0

    .line 482
    .local v20, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 483
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 484
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v20

    .line 486
    :cond_0
    if-nez v20, :cond_21

    .line 487
    const/4 v4, 0x0

    .line 488
    .local v4, "f_startDate":Ljava/lang/String;
    const/4 v5, 0x0

    .line 489
    .local v5, "f_adds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 490
    .local v6, "f_edits":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .line 491
    .local v7, "f_deletes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v8, 0x0

    .line 492
    .local v8, "f_activeUsers28Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    .line 493
    .local v9, "f_activeUsers7Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v10, 0x0

    .line 494
    .local v10, "f_activeUsers1Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v11, 0x0

    .line 495
    .local v11, "f_activeSharedFolders28Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v12, 0x0

    .line 496
    .local v12, "f_activeSharedFolders7Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v13, 0x0

    .line 497
    .local v13, "f_activeSharedFolders1Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v14, 0x0

    .line 498
    .local v14, "f_sharedLinksCreated":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v15, 0x0

    .line 499
    .local v15, "f_sharedLinksViewedByTeam":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v16, 0x0

    .line 500
    .local v16, "f_sharedLinksViewedByOutsideUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v17, 0x0

    .line 501
    .local v17, "f_sharedLinksViewedByNotLoggedIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v18, 0x0

    .line 502
    .local v18, "f_sharedLinksViewedTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v21

    sget-object v22, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    .line 504
    .local v19, "field":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 505
    const-string v21, "start_date"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 506
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_startDate":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "f_startDate":Ljava/lang/String;
    goto :goto_0

    .line 508
    :cond_1
    const-string v21, "adds"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 509
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_adds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v5, Ljava/util/List;

    .restart local v5    # "f_adds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    .line 511
    :cond_2
    const-string v21, "edits"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 512
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_edits":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v6, Ljava/util/List;

    .restart local v6    # "f_edits":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    .line 514
    :cond_3
    const-string v21, "deletes"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 515
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_deletes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v7, Ljava/util/List;

    .restart local v7    # "f_deletes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 517
    :cond_4
    const-string v21, "active_users_28_day"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 518
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_activeUsers28Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v8, Ljava/util/List;

    .restart local v8    # "f_activeUsers28Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 520
    :cond_5
    const-string v21, "active_users_7_day"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 521
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "f_activeUsers7Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v9, Ljava/util/List;

    .restart local v9    # "f_activeUsers7Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 523
    :cond_6
    const-string v21, "active_users_1_day"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 524
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "f_activeUsers1Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v10, Ljava/util/List;

    .restart local v10    # "f_activeUsers1Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 526
    :cond_7
    const-string v21, "active_shared_folders_28_day"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 527
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "f_activeSharedFolders28Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v11, Ljava/util/List;

    .restart local v11    # "f_activeSharedFolders28Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 529
    :cond_8
    const-string v21, "active_shared_folders_7_day"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 530
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "f_activeSharedFolders7Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v12, Ljava/util/List;

    .restart local v12    # "f_activeSharedFolders7Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 532
    :cond_9
    const-string v21, "active_shared_folders_1_day"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 533
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "f_activeSharedFolders1Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v13, Ljava/util/List;

    .restart local v13    # "f_activeSharedFolders1Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 535
    :cond_a
    const-string v21, "shared_links_created"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 536
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "f_sharedLinksCreated":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v14, Ljava/util/List;

    .restart local v14    # "f_sharedLinksCreated":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 538
    :cond_b
    const-string v21, "shared_links_viewed_by_team"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 539
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "f_sharedLinksViewedByTeam":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v15, Ljava/util/List;

    .restart local v15    # "f_sharedLinksViewedByTeam":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 541
    :cond_c
    const-string v21, "shared_links_viewed_by_outside_user"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 542
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "f_sharedLinksViewedByOutsideUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v16, Ljava/util/List;

    .restart local v16    # "f_sharedLinksViewedByOutsideUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 544
    :cond_d
    const-string v21, "shared_links_viewed_by_not_logged_in"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 545
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "f_sharedLinksViewedByNotLoggedIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v17, Ljava/util/List;

    .restart local v17    # "f_sharedLinksViewedByNotLoggedIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 547
    :cond_e
    const-string v21, "shared_links_viewed_total"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 548
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "f_sharedLinksViewedTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v18, Ljava/util/List;

    .restart local v18    # "f_sharedLinksViewedTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 551
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 554
    .end local v19    # "field":Ljava/lang/String;
    :cond_10
    if-nez v4, :cond_11

    .line 555
    new-instance v21, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v22, "Required field \"start_date\" missing."

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v21

    .line 557
    :cond_11
    if-nez v5, :cond_12

    .line 558
    new-instance v21, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v22, "Required field \"adds\" missing."

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v21

    .line 560
    :cond_12
    if-nez v6, :cond_13

    .line 561
    new-instance v21, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v22, "Required field \"edits\" missing."

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v21

    .line 563
    :cond_13
    if-nez v7, :cond_14

    .line 564
    new-instance v21, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v22, "Required field \"deletes\" missing."

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v21

    .line 566
    :cond_14
    if-nez v8, :cond_15

    .line 567
    new-instance v21, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v22, "Required field \"active_users_28_day\" missing."

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v21

    .line 569
    :cond_15
    if-nez v9, :cond_16

    .line 570
    new-instance v21, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v22, "Required field \"active_users_7_day\" missing."

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v21

    .line 572
    :cond_16
    if-nez v10, :cond_17

    .line 573
    new-instance v21, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v22, "Required field \"active_users_1_day\" missing."

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v21

    .line 575
    :cond_17
    if-nez v11, :cond_18

    .line 576
    new-instance v21, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v22, "Required field \"active_shared_folders_28_day\" missing."

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v21

    .line 578
    :cond_18
    if-nez v12, :cond_19

    .line 579
    new-instance v21, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v22, "Required field \"active_shared_folders_7_day\" missing."

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v21

    .line 581
    :cond_19
    if-nez v13, :cond_1a

    .line 582
    new-instance v21, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v22, "Required field \"active_shared_folders_1_day\" missing."

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v21

    .line 584
    :cond_1a
    if-nez v14, :cond_1b

    .line 585
    new-instance v21, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v22, "Required field \"shared_links_created\" missing."

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v21

    .line 587
    :cond_1b
    if-nez v15, :cond_1c

    .line 588
    new-instance v21, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v22, "Required field \"shared_links_viewed_by_team\" missing."

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v21

    .line 590
    :cond_1c
    if-nez v16, :cond_1d

    .line 591
    new-instance v21, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v22, "Required field \"shared_links_viewed_by_outside_user\" missing."

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v21

    .line 593
    :cond_1d
    if-nez v17, :cond_1e

    .line 594
    new-instance v21, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v22, "Required field \"shared_links_viewed_by_not_logged_in\" missing."

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v21

    .line 596
    :cond_1e
    if-nez v18, :cond_1f

    .line 597
    new-instance v21, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v22, "Required field \"shared_links_viewed_total\" missing."

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v21

    .line 599
    :cond_1f
    new-instance v3, Lcom/dropbox/core/v2/team/GetActivityReport;

    invoke-direct/range {v3 .. v18}, Lcom/dropbox/core/v2/team/GetActivityReport;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 604
    .local v3, "value":Lcom/dropbox/core/v2/team/GetActivityReport;
    if-nez p2, :cond_20

    .line 605
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 607
    :cond_20
    return-object v3

    .line 602
    .end local v3    # "value":Lcom/dropbox/core/v2/team/GetActivityReport;
    .end local v4    # "f_startDate":Ljava/lang/String;
    .end local v5    # "f_adds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v6    # "f_edits":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v7    # "f_deletes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v8    # "f_activeUsers28Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v9    # "f_activeUsers7Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v10    # "f_activeUsers1Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v11    # "f_activeSharedFolders28Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v12    # "f_activeSharedFolders7Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v13    # "f_activeSharedFolders1Day":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v14    # "f_sharedLinksCreated":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v15    # "f_sharedLinksViewedByTeam":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v16    # "f_sharedLinksViewedByOutsideUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v17    # "f_sharedLinksViewedByNotLoggedIn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v18    # "f_sharedLinksViewedTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_21
    new-instance v21, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "No subtype found that matches tag: \""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v21
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
    .line 435
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GetActivityReport;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GetActivityReport;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/GetActivityReport;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 440
    if-nez p3, :cond_0

    .line 441
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 443
    :cond_0
    const-string v0, "start_date"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->startDate:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 445
    const-string v0, "adds"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->adds:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 447
    const-string v0, "edits"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 448
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->edits:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 449
    const-string v0, "deletes"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->deletes:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 451
    const-string v0, "active_users_28_day"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers28Day:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 453
    const-string v0, "active_users_7_day"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers7Day:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 455
    const-string v0, "active_users_1_day"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 456
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers1Day:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 457
    const-string v0, "active_shared_folders_28_day"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders28Day:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 459
    const-string v0, "active_shared_folders_7_day"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 460
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders7Day:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 461
    const-string v0, "active_shared_folders_1_day"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders1Day:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 463
    const-string v0, "shared_links_created"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksCreated:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 465
    const-string v0, "shared_links_viewed_by_team"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 466
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByTeam:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 467
    const-string v0, "shared_links_viewed_by_outside_user"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 468
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByOutsideUser:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 469
    const-string v0, "shared_links_viewed_by_not_logged_in"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 470
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByNotLoggedIn:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 471
    const-string v0, "shared_links_viewed_total"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedTotal:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 473
    if-nez p3, :cond_1

    .line 474
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 476
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
    .line 435
    check-cast p1, Lcom/dropbox/core/v2/team/GetActivityReport;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;->serialize(Lcom/dropbox/core/v2/team/GetActivityReport;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
