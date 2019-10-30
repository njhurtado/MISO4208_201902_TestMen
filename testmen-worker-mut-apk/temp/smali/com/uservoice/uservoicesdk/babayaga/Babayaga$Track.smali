.class Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Track;
.super Ljava/lang/Object;
.source "Babayaga.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uservoice/uservoicesdk/babayaga/Babayaga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Track"
.end annotation


# instance fields
.field public event:Ljava/lang/String;

.field public eventProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "eventProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Track;->event:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Track;->eventProps:Ljava/util/Map;

    .line 28
    return-void
.end method
