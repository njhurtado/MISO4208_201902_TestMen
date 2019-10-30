.class public Lcom/uservoice/uservoicesdk/babayaga/Babayaga;
.super Ljava/lang/Object;
.source "Babayaga.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;,
        Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Track;
    }
.end annotation


# static fields
.field public static CHANNEL:Ljava/lang/String;

.field static DOMAIN:Ljava/lang/String;

.field public static EXTERNAL_CHANNEL:Ljava/lang/String;

.field private static prefs:Landroid/content/SharedPreferences;

.field private static uvts:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "by.uservoice.com"

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->DOMAIN:Ljava/lang/String;

    .line 18
    const-string v0, "d"

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->CHANNEL:Ljava/lang/String;

    .line 19
    const-string v0, "x"

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->EXTERNAL_CHANNEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUvts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->uvts:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const-string v0, "uv"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->prefs:Landroid/content/SharedPreferences;

    .line 103
    sget-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "uvts"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "uvts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->uvts:Ljava/lang/String;

    .line 106
    :cond_0
    sget-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_APP:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    invoke-static {p0, v0}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;)V

    .line 107
    return-void
.end method

.method public static setUvts(Ljava/lang/String;)V
    .locals 2
    .param p0, "uvts"    # Ljava/lang/String;

    .prologue
    .line 65
    sput-object p0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->uvts:Ljava/lang/String;

    .line 66
    sget-object v1, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "uvts"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method public static track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;Ljava/util/Map;)V

    .line 73
    return-void
.end method

.method public static track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;
    .param p2, "id"    # I

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p0, p1, v0}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;Ljava/util/Map;)V

    .line 90
    return-void
.end method

.method public static track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;
    .param p2, "searchText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/uservoice/uservoicesdk/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p3, "results":Ljava/util/List;, "Ljava/util/List<+Lcom/uservoice/uservoicesdk/model/BaseModel;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uservoice/uservoicesdk/model/BaseModel;

    .line 79
    .local v1, "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/model/BaseModel;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    .end local v1    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    :cond_0
    const-string v3, "ids"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v3, "text"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p0, p1, v2}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;Ljava/util/Map;)V

    .line 84
    return-void
.end method

.method public static track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "eventProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method public static track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "eventProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;

    sget-object v1, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->uvts:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    return-void
.end method
