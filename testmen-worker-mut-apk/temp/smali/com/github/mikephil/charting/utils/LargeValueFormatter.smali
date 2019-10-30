.class public Lcom/github/mikephil/charting/utils/LargeValueFormatter;
.super Ljava/lang/Object;
.source "LargeValueFormatter.java"

# interfaces
.implements Lcom/github/mikephil/charting/utils/ValueFormatter;


# static fields
.field private static final MAX_LENGTH:I = 0x4

.field private static final SUFFIX:[Ljava/lang/String;


# instance fields
.field private mFormat:Ljava/text/DecimalFormat;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "k"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "m"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "t"

    aput-object v2, v0, v1

    sput-object v0, Lcom/github/mikephil/charting/utils/LargeValueFormatter;->SUFFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/LargeValueFormatter;->mText:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###E0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/LargeValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "appendix"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/github/mikephil/charting/utils/LargeValueFormatter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/github/mikephil/charting/utils/LargeValueFormatter;->mText:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private makePretty(D)Ljava/lang/String;
    .locals 5
    .param p1, "number"    # D

    .prologue
    .line 50
    iget-object v1, p0, Lcom/github/mikephil/charting/utils/LargeValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v1, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "r":Ljava/lang/String;
    const-string v1, "E[0-9]"

    sget-object v2, Lcom/github/mikephil/charting/utils/LargeValueFormatter;->SUFFIX:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    const-string v1, "[0-9]+\\.[a-z]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, p1

    invoke-direct {p0, v2, v3}, Lcom/github/mikephil/charting/utils/LargeValueFormatter;->makePretty(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/LargeValueFormatter;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
