.class Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseFreq;
.super Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseFreq"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseFreq;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "er"    # Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    .prologue
    .line 722
    invoke-static {}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->access$1400()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 723
    .local v0, "freq":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 724
    new-instance v1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$InvalidFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid FREQ value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 726
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->freq:I

    .line 727
    const/4 v1, 0x1

    return v1
.end method
