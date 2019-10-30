.class Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseCount;
.super Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseCount"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseCount;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "er"    # Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    .prologue
    const/4 v3, 0x1

    .line 759
    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseCount;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v0

    iput v0, p2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    .line 760
    iget v0, p2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    if-gez v0, :cond_0

    .line 761
    invoke-static {}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->access$1500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Count. Forcing COUNT to 1 from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iput v3, p2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    .line 764
    :cond_0
    const/4 v0, 0x4

    return v0
.end method
