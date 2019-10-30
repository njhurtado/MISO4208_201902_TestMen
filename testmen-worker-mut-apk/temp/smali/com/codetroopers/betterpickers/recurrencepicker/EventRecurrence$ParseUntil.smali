.class Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseUntil;
.super Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseUntil"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseUntil;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "er"    # Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    .prologue
    .line 747
    iput-object p1, p2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    .line 748
    const/4 v0, 0x2

    return v0
.end method
