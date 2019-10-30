.class public Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ColorPickerDialog.java"

# interfaces
.implements Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;


# static fields
.field protected static final KEY_COLORS:Ljava/lang/String; = "colors"

.field protected static final KEY_COLUMNS:Ljava/lang/String; = "columns"

.field protected static final KEY_SELECTED_COLOR:Ljava/lang/String; = "selected_color"

.field protected static final KEY_SIZE:Ljava/lang/String; = "size"

.field protected static final KEY_TITLE_ID:Ljava/lang/String; = "title_id"

.field public static final SIZE_LARGE:I = 0x1

.field public static final SIZE_SMALL:I = 0x2


# instance fields
.field protected mAlertDialog:Landroid/app/AlertDialog;

.field protected mColors:[I

.field protected mColumns:I

.field protected mListener:Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

.field private mPalette:Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;

.field private mProgress:Landroid/widget/ProgressBar;

.field protected mSelectedColor:I

.field protected mSize:I

.field protected mTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 48
    const v0, 0x7f0f003c

    iput v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mTitleResId:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mColors:[I

    .line 61
    return-void
.end method

.method public static newInstance(I[IIII)Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;
    .locals 6
    .param p0, "titleResId"    # I
    .param p1, "colors"    # [I
    .param p2, "selectedColor"    # I
    .param p3, "columns"    # I
    .param p4, "size"    # I

    .prologue
    .line 65
    new-instance v0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;

    invoke-direct {v0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;-><init>()V

    .local v0, "ret":Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;
    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 66
    invoke-virtual/range {v0 .. v5}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->initialize(I[IIII)V

    .line 67
    return-object v0
.end method

.method private refreshPalette()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mPalette:Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mColors:[I

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mPalette:Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;

    iget-object v1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mColors:[I

    iget v2, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mSelectedColor:I

    invoke-virtual {v0, v1, v2}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->drawPalette([II)V

    .line 186
    :cond_0
    return-void
.end method


# virtual methods
.method public getColors()[I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mColors:[I

    return-object v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mSelectedColor:I

    return v0
.end method

.method public initialize(I[IIII)V
    .locals 0
    .param p1, "titleResId"    # I
    .param p2, "colors"    # [I
    .param p3, "selectedColor"    # I
    .param p4, "columns"    # I
    .param p5, "size"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1, p4, p5}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->setArguments(III)V

    .line 72
    invoke-virtual {p0, p2, p3}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->setColors([II)V

    .line 73
    return-void
.end method

.method public onColorSelected(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 126
    iget-object v1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mListener:Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mListener:Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    invoke-interface {v1, p1}, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;->onColorSelected(I)V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    .line 133
    .local v0, "listener":Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;
    invoke-interface {v0, p1}, Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;->onColorSelected(I)V

    .line 136
    .end local v0    # "listener":Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;
    :cond_1
    iget v1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mSelectedColor:I

    if-eq p1, v1, :cond_2

    .line 137
    iput p1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mSelectedColor:I

    .line 139
    iget-object v1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mPalette:Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;

    iget-object v2, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mColors:[I

    iget v3, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mSelectedColor:I

    invoke-virtual {v1, v2, v3}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->drawPalette([II)V

    .line 142
    :cond_2
    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->dismiss()V

    .line 143
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mTitleResId:I

    .line 93
    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "columns"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mColumns:I

    .line 94
    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mSize:I

    .line 97
    :cond_0
    if-eqz p1, :cond_1

    .line 98
    const-string v0, "colors"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mColors:[I

    .line 99
    const-string v0, "selected_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mSelectedColor:I

    .line 101
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 107
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0032

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 109
    const v2, 0x7f090068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;

    iput-object v2, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mPalette:Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;

    .line 110
    iget-object v2, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mPalette:Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;

    iget v3, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mSize:I

    iget v4, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mColumns:I

    invoke-virtual {v2, v3, v4, p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->init(IILorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V

    .line 112
    iget-object v2, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mColors:[I

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->showPaletteView()V

    .line 116
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mTitleResId:I

    .line 117
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 118
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 121
    iget-object v2, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 199
    const-string v0, "colors"

    iget-object v1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mColors:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 200
    const-string v0, "selected_color"

    iget v1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mSelectedColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 201
    return-void
.end method

.method public setArguments(III)V
    .locals 2
    .param p1, "titleResId"    # I
    .param p2, "columns"    # I
    .param p3, "size"    # I

    .prologue
    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "title_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string v1, "columns"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string v1, "size"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->setArguments(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method public setColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 169
    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mColors:[I

    if-eq v0, p1, :cond_0

    .line 170
    iput-object p1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mColors:[I

    .line 171
    invoke-direct {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->refreshPalette()V

    .line 173
    :cond_0
    return-void
.end method

.method public setColors([II)V
    .locals 1
    .param p1, "colors"    # [I
    .param p2, "selectedColor"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mColors:[I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mSelectedColor:I

    if-eq v0, p2, :cond_1

    .line 162
    :cond_0
    iput-object p1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mColors:[I

    .line 163
    iput p2, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mSelectedColor:I

    .line 164
    invoke-direct {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->refreshPalette()V

    .line 166
    :cond_1
    return-void
.end method

.method public setOnColorSelectedListener(Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mListener:Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    .line 85
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 176
    iget v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mSelectedColor:I

    if-eq v0, p1, :cond_0

    .line 177
    iput p1, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mSelectedColor:I

    .line 178
    invoke-direct {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->refreshPalette()V

    .line 180
    :cond_0
    return-void
.end method

.method public showPaletteView()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mPalette:Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    invoke-direct {p0}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->refreshPalette()V

    .line 149
    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mPalette:Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->setVisibility(I)V

    .line 151
    :cond_0
    return-void
.end method

.method public showProgressBarView()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mPalette:Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->mPalette:Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/colorpicker/ColorPickerPalette;->setVisibility(I)V

    .line 158
    :cond_0
    return-void
.end method
