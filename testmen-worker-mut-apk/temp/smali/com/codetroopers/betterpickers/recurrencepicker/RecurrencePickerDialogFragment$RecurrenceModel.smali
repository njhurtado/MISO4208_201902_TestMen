.class Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;
.super Ljava/lang/Object;
.source "RecurrencePickerDialogFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecurrenceModel"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;",
            ">;"
        }
    .end annotation
.end field

.field static final END_BY_COUNT:I = 0x2

.field static final END_BY_DATE:I = 0x1

.field static final END_NEVER:I = 0x0

.field static final FREQ_DAILY:I = 0x1

.field static final FREQ_HOURLY:I = 0x0

.field static final FREQ_MONTHLY:I = 0x3

.field static final FREQ_WEEKLY:I = 0x2

.field static final FREQ_YEARLY:I = 0x4

.field static final MONTHLY_BY_DATE:I = 0x0

.field static final MONTHLY_BY_NTH_DAY_OF_WEEK:I = 0x1

.field static final STATE_NO_RECURRENCE:I = 0x0

.field static final STATE_RECURRENCE:I = 0x1


# instance fields
.field end:I

.field endCount:I

.field endDate:Landroid/text/format/Time;

.field forceHideSwitchButton:Z

.field freq:I

.field interval:I

.field monthlyByDayOfWeek:I

.field monthlyByMonthDay:I

.field monthlyByNthDayOfWeek:I

.field monthlyRepeat:I

.field recurrenceState:I

.field weeklyByDayOfWeek:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel$1;

    invoke-direct {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel$1;-><init>()V

    sput-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->interval:I

    .line 149
    const/4 v0, 0x5

    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    .line 154
    const/4 v0, 0x7

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->weeklyByDayOfWeek:[Z

    .line 201
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v1, 0x2

    iput v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    .line 130
    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->interval:I

    .line 149
    const/4 v1, 0x5

    iput v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    .line 154
    const/4 v1, 0x7

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->weeklyByDayOfWeek:[Z

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->recurrenceState:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->interval:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    .line 231
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    .line 232
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->year:I

    .line 233
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->month:I

    .line 234
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->weeklyByDayOfWeek:[Z

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyRepeat:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByMonthDay:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByDayOfWeek:I

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByNthDayOfWeek:I

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->forceHideSwitchButton:Z

    .line 242
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$1;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Model [freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->interval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weeklyByDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->weeklyByDayOfWeek:[Z

    .line 195
    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", monthlyRepeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyRepeat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", monthlyByMonthDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByMonthDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", monthlyByDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", monthlyByNthDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByNthDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 210
    iget v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->recurrenceState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->weeklyByDayOfWeek:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 219
    iget v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyRepeat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByMonthDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByDayOfWeek:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByNthDayOfWeek:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->forceHideSwitchButton:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 224
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
