.class Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;
.super Ljava/lang/Object;
.source "TimeZoneFilterTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterTypeResult"
.end annotation


# instance fields
.field constraint:Ljava/lang/String;

.field final synthetic this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

.field public time:I

.field type:I


# direct methods
.method public constructor <init>(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;ILjava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;
    .param p2, "type"    # I
    .param p3, "constraint"    # Ljava/lang/String;
    .param p4, "time"    # I

    .prologue
    .line 76
    iput-object p1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->type:I

    .line 78
    iput-object p3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->constraint:Ljava/lang/String;

    .line 79
    iput p4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->time:I

    .line 80
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->constraint:Ljava/lang/String;

    return-object v0
.end method
