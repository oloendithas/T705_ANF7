.class Landroid/widget/Editor$SuggestionsPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionsPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;,
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;,
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;,
        Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;
    }
.end annotation


# static fields
.field private static final ADD_TO_DICTIONARY:I = -0x1

.field private static final DELETE_TEXT:I = -0x2

.field private static final MAX_NUMBER_SUGGESTIONS:I = 0x5


# instance fields
.field private mCursorWasVisibleBeforeSuggestions:Z

.field private mIsShowingUp:Z

.field private mNumberOfSuggestions:I

.field private final mSpansLengths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

.field private final mSuggestionSpanComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .registers 4

    .prologue
    .line 2795
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    .line 2769
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 2796
    iget-boolean v0, p1, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    .line 2797
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionSpanComparator:Ljava/util/Comparator;

    .line 2798
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    .line 2799
    return-void
.end method

.method static synthetic access$1700(Landroid/widget/Editor$SuggestionsPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    .line 2762
    iget-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/Editor$SuggestionsPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    .line 2762
    iget v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/Editor$SuggestionsPopupWindow;)[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    .line 2762
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/Editor$SuggestionsPopupWindow;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    .line 2762
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    return-object v0
.end method

.method private getSuggestionSpans()[Landroid/text/style/SuggestionSpan;
    .registers 12

    .prologue
    .line 2909
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 2910
    .local v4, "pos":I
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    .line 2911
    .local v5, "spannable":Landroid/text/Spannable;
    const-class v9, Landroid/text/style/SuggestionSpan;

    invoke-interface {v5, v4, v4, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/SuggestionSpan;

    .line 2913
    .local v8, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 2914
    move-object v0, v8

    .local v0, "arr$":[Landroid/text/style/SuggestionSpan;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_26
    if-ge v2, v3, :cond_40

    aget-object v7, v0, v2

    .line 2915
    .local v7, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v5, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 2916
    .local v6, "start":I
    invoke-interface {v5, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 2917
    .local v1, "end":I
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    sub-int v10, v1, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2914
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 2922
    .end local v1    # "end":I
    .end local v6    # "start":I
    .end local v7    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_40
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionSpanComparator:Ljava/util/Comparator;

    invoke-static {v8, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2923
    return-object v8
.end method

.method private highlightTextDifferences(Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;II)V
    .registers 13
    .param p1, "suggestionInfo"    # Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    .param p2, "unionStart"    # I
    .param p3, "unionEnd"    # I

    .prologue
    const/4 v8, 0x0

    .line 3105
    iget-object v4, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 3106
    .local v2, "text":Landroid/text/Spannable;
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 3107
    .local v1, "spanStart":I
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 3110
    .local v0, "spanEnd":I
    sub-int v4, v1, p2

    iput v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    .line 3111
    iget v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    iget-object v5, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionEnd:I

    .line 3114
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    iget-object v5, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    iget-object v6, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3118
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3119
    .local v3, "textAsString":Ljava/lang/String;
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3120
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3121
    return-void
.end method

.method private updateSuggestions()Z
    .registers 36

    .prologue
    .line 2992
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    check-cast v21, Landroid/text/Spannable;

    .line 2993
    .local v21, "spannable":Landroid/text/Spannable;
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->getSuggestionSpans()[Landroid/text/style/SuggestionSpan;

    move-result-object v27

    .line 2995
    .local v27, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v27

    array-length v10, v0

    .line 2997
    .local v10, "nbSpans":I
    if-nez v10, :cond_1c

    const/16 v30, 0x0

    .line 3100
    :goto_1b
    return v30

    .line 2999
    :cond_1c
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 3000
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 3001
    .local v20, "spanUnionStart":I
    const/16 v19, 0x0

    .line 3003
    .local v19, "spanUnionEnd":I
    const/4 v8, 0x0

    .line 3004
    .local v8, "misspelledSpan":Landroid/text/style/SuggestionSpan;
    const/16 v29, 0x0

    .line 3006
    .local v29, "underlineColor":I
    const/16 v17, 0x0

    .local v17, "spanIndex":I
    :goto_3d
    move/from16 v0, v17

    if-ge v0, v10, :cond_130

    .line 3007
    aget-object v26, v27, v17

    .line 3008
    .local v26, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    .line 3009
    .local v18, "spanStart":I
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v16

    .line 3010
    .local v16, "spanEnd":I
    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 3011
    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 3013
    invoke-virtual/range {v26 .. v26}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v30

    and-int/lit8 v30, v30, 0x2

    if-eqz v30, :cond_6d

    .line 3014
    move-object/from16 v8, v26

    .line 3018
    :cond_6d
    if-nez v17, :cond_73

    invoke-virtual/range {v26 .. v26}, Landroid/text/style/SuggestionSpan;->getUnderlineColor()I

    move-result v29

    .line 3020
    :cond_73
    invoke-virtual/range {v26 .. v26}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v28

    .line 3021
    .local v28, "suggestions":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v11, v0

    .line 3022
    .local v11, "nbSuggestions":I
    const/16 v23, 0x0

    .local v23, "suggestionIndex":I
    :goto_7c
    move/from16 v0, v23

    if-ge v0, v11, :cond_124

    .line 3023
    aget-object v22, v28, v23

    .line 3025
    .local v22, "suggestion":Ljava/lang/String;
    const/16 v25, 0x0

    .line 3026
    .local v25, "suggestionIsDuplicate":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_85
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v6, v0, :cond_cd

    .line 3027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    aget-object v30, v30, v6

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_128

    .line 3028
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    aget-object v30, v30, v6

    move-object/from16 v0, v30

    iget-object v15, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 3029
    .local v15, "otherSuggestionSpan":Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    .line 3030
    .local v14, "otherSpanStart":I
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 3031
    .local v13, "otherSpanEnd":I
    move/from16 v0, v18

    if-ne v0, v14, :cond_128

    move/from16 v0, v16

    if-ne v0, v13, :cond_128

    .line 3032
    const/16 v25, 0x1

    .line 3038
    .end local v13    # "otherSpanEnd":I
    .end local v14    # "otherSpanStart":I
    .end local v15    # "otherSuggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_cd
    if-nez v25, :cond_12c

    .line 3039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v31, v0

    aget-object v24, v30, v31

    .line 3040
    .local v24, "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 3041
    move/from16 v0, v23

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    .line 3042
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v32

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3044
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 3046
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_12c

    .line 3048
    move/from16 v17, v10

    .line 3006
    .end local v6    # "i":I
    .end local v22    # "suggestion":Ljava/lang/String;
    .end local v24    # "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    .end local v25    # "suggestionIsDuplicate":Z
    :cond_124
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3d

    .line 3026
    .restart local v6    # "i":I
    .restart local v22    # "suggestion":Ljava/lang/String;
    .restart local v25    # "suggestionIsDuplicate":Z
    :cond_128
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_85

    .line 3022
    :cond_12c
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_7c

    .line 3055
    .end local v6    # "i":I
    .end local v11    # "nbSuggestions":I
    .end local v16    # "spanEnd":I
    .end local v18    # "spanStart":I
    .end local v22    # "suggestion":Ljava/lang/String;
    .end local v23    # "suggestionIndex":I
    .end local v25    # "suggestionIsDuplicate":Z
    .end local v26    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v28    # "suggestions":[Ljava/lang/String;
    :cond_130
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_131
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v6, v0, :cond_151

    .line 3056
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    aget-object v30, v30, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v20

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SuggestionsPopupWindow;->highlightTextDifferences(Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;II)V

    .line 3055
    add-int/lit8 v6, v6, 0x1

    goto :goto_131

    .line 3060
    :cond_151
    if-eqz v8, :cond_1ca

    .line 3061
    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 3062
    .local v9, "misspelledStart":I
    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 3063
    .local v7, "misspelledEnd":I
    if-ltz v9, :cond_1ca

    if-le v7, v9, :cond_1ca

    .line 3064
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v31, v0

    aget-object v24, v30, v31

    .line 3065
    .restart local v24    # "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v24

    iput-object v8, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 3066
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    .line 3067
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v33 .. v33}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v33

    const v34, 0x1040673

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v30 .. v33}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3069
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x21

    invoke-virtual/range {v30 .. v34}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3072
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 3077
    .end local v7    # "misspelledEnd":I
    .end local v9    # "misspelledStart":I
    .end local v24    # "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    :cond_1ca
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v31, v0

    aget-object v24, v30, v31

    .line 3078
    .restart local v24    # "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 3079
    const/16 v30, -0x2

    move/from16 v0, v30

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    .line 3080
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v33 .. v33}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v33

    const v34, 0x1040674

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v30 .. v33}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3082
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x21

    invoke-virtual/range {v30 .. v34}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3084
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 3086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v30, v0

    if-nez v30, :cond_254

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    new-instance v31, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct/range {v31 .. v31}, Landroid/text/style/SuggestionRangeSpan;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    .line 3087
    :cond_254
    if-nez v29, :cond_29d

    .line 3089
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v31 .. v31}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/widget/TextView;->mHighlightColor:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    .line 3096
    :goto_275
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v30, v0

    const/16 v31, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3099
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 3100
    const/16 v30, 0x1

    goto/16 :goto_1b

    .line 3091
    :cond_29d
    const v5, 0x3ecccccd

    .line 3092
    .local v5, "BACKGROUND_TRANSPARENCY":F
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->alpha(I)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const v31, 0x3ecccccd

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v12, v0

    .line 3093
    .local v12, "newAlpha":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v30, v0

    const v31, 0xffffff

    and-int v31, v31, v29

    shl-int/lit8 v32, v12, 0x18

    add-int v31, v31, v32

    invoke-virtual/range {v30 .. v31}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    goto :goto_275
.end method


# virtual methods
.method protected clipVertically(I)I
    .registers 5
    .param p1, "positionY"    # I

    .prologue
    .line 2981
    iget-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2982
    .local v1, "height":I
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2983
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method protected createPopupWindow()V
    .registers 4

    .prologue
    .line 2803
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010373

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 2805
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 2806
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2807
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2808
    return-void
.end method

.method protected getTextOffset()I
    .registers 2

    .prologue
    .line 2971
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .registers 3
    .param p1, "line"    # I

    .prologue
    .line 2976
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    return v0
.end method

.method public hide()V
    .registers 1

    .prologue
    .line 2988
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    .line 2989
    return-void
.end method

.method protected initContentView()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2812
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2813
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v2, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-direct {v2, p0, v4}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V

    iput-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    .line 2814
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2815
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2816
    iput-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 2819
    const/4 v2, 0x7

    new-array v2, v2, [Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    iput-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    .line 2820
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_38

    .line 2821
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    new-instance v3, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    invoke-direct {v3, p0, v4}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V

    aput-object v3, v2, v0

    .line 2820
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 2823
    :cond_38
    return-void
.end method

.method public isShowingUp()Z
    .registers 2

    .prologue
    .line 2826
    iget-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    return v0
.end method

.method protected measureContent()V
    .registers 10

    .prologue
    const/high16 v8, -0x80000000

    .line 2940
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2941
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2943
    .local v1, "horizontalMeasure":I
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2946
    .local v4, "verticalMeasure":I
    const/4 v6, 0x0

    .line 2947
    .local v6, "width":I
    const/4 v5, 0x0

    .line 2948
    .local v5, "view":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    iget v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ge v2, v7, :cond_40

    .line 2949
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    iget-object v8, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2, v5, v8}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2950
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, -0x2

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2951
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    .line 2952
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2948
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 2956
    :cond_40
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const/high16 v8, 0x40000000

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v8, v4}, Landroid/view/View;->measure(II)V

    .line 2960
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2961
    .local v3, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_80

    .line 2962
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_65

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    # setter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7, v8}, Landroid/widget/Editor;->access$2402(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 2963
    :cond_65
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2964
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 2966
    :cond_80
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2967
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 36
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3125
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Editable;

    .line 3126
    .local v3, "editable":Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v25, v0

    aget-object v16, v25, p3

    .line 3128
    .local v16, "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_85

    .line 3129
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 3130
    .local v13, "spanUnionStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 3131
    .local v12, "spanUnionEnd":I
    if-ltz v13, :cond_81

    if-le v12, v13, :cond_81

    .line 3133
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_72

    invoke-interface {v3, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v25

    if-eqz v25, :cond_72

    if-eqz v13, :cond_70

    add-int/lit8 v25, v13, -0x1

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v25

    if-eqz v25, :cond_72

    .line 3137
    :cond_70
    add-int/lit8 v12, v12, 0x1

    .line 3139
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13, v12}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 3141
    :cond_81
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 3225
    .end local v12    # "spanUnionEnd":I
    .end local v13    # "spanUnionStart":I
    :goto_84
    return-void

    .line 3145
    :cond_85
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 3146
    .local v11, "spanStart":I
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 3147
    .local v10, "spanEnd":I
    if-ltz v11, :cond_a1

    if-gt v10, v11, :cond_a5

    .line 3149
    :cond_a1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    goto :goto_84

    .line 3153
    :cond_a5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 3155
    .local v9, "originalText":Ljava/lang/String;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_12b

    .line 3156
    new-instance v5, Landroid/content/Intent;

    const-string v25, "com.android.settings.USER_DICTIONARY_INSERT"

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3157
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v25, "word"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3158
    const-string v25, "locale"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3161
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v25

    const/high16 v26, 0x10000000

    or-int v25, v25, v26

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3162
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3165
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 3166
    invoke-static {v3, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3167
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    # invokes: Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V
    invoke-static {v0, v11, v10, v1}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;IIZ)V

    .line 3224
    .end local v5    # "intent":Landroid/content/Intent;
    :goto_126
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    goto/16 :goto_84

    .line 3170
    :cond_12b
    const-class v25, Landroid/text/style/SuggestionSpan;

    move-object/from16 v0, v25

    invoke-interface {v3, v11, v10, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/style/SuggestionSpan;

    .line 3172
    .local v19, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v19

    array-length v6, v0

    .line 3173
    .local v6, "length":I
    new-array v0, v6, [I

    move-object/from16 v22, v0

    .line 3174
    .local v22, "suggestionSpansStarts":[I
    new-array v0, v6, [I

    move-object/from16 v20, v0

    .line 3175
    .local v20, "suggestionSpansEnds":[I
    new-array v0, v6, [I

    move-object/from16 v21, v0

    .line 3176
    .local v21, "suggestionSpansFlags":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_145
    if-ge v4, v6, :cond_173

    .line 3177
    aget-object v17, v19, v4

    .line 3178
    .local v17, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v25

    aput v25, v22, v4

    .line 3179
    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v25

    aput v25, v20, v4

    .line 3180
    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v25

    aput v25, v21, v4

    .line 3183
    invoke-virtual/range {v17 .. v17}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v18

    .line 3184
    .local v18, "suggestionSpanFlags":I
    and-int/lit8 v25, v18, 0x2

    if-lez v25, :cond_170

    .line 3185
    and-int/lit8 v18, v18, -0x3

    .line 3186
    and-int/lit8 v18, v18, -0x2

    .line 3187
    invoke-virtual/range {v17 .. v18}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 3176
    :cond_170
    add-int/lit8 v4, v4, 0x1

    goto :goto_145

    .line 3191
    .end local v17    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v18    # "suggestionSpanFlags":I
    :cond_173
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    move/from16 v23, v0

    .line 3192
    .local v23, "suggestionStart":I
    move-object/from16 v0, v16

    iget v15, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionEnd:I

    .line 3193
    .local v15, "suggestionEnd":I
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3195
    .local v14, "suggestion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v10, v14}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 3199
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v9, v2}, Landroid/text/style/SuggestionSpan;->notifySelection(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3203
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v24

    .line 3204
    .local v24, "suggestions":[Ljava/lang/String;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v25, v0

    aput-object v9, v24, v25

    .line 3207
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v25

    sub-int v26, v10, v11

    sub-int v7, v25, v26

    .line 3208
    .local v7, "lengthDifference":I
    const/4 v4, 0x0

    :goto_1dc
    if-ge v4, v6, :cond_204

    .line 3212
    aget v25, v22, v4

    move/from16 v0, v25

    if-gt v0, v11, :cond_201

    aget v25, v20, v4

    move/from16 v0, v25

    if-lt v0, v10, :cond_201

    .line 3214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    aget-object v26, v19, v4

    aget v27, v22, v4

    aget v28, v20, v4

    add-int v28, v28, v7

    aget v29, v21, v4

    invoke-virtual/range {v25 .. v29}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V

    .line 3208
    :cond_201
    add-int/lit8 v4, v4, 0x1

    goto :goto_1dc

    .line 3220
    :cond_204
    add-int v8, v10, v7

    .line 3221
    .local v8, "newCursorPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v8}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    goto/16 :goto_126
.end method

.method public onParentLostFocus()V
    .registers 2

    .prologue
    .line 2830
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 2831
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 2928
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_f

    .line 2936
    :cond_e
    :goto_e
    return-void

    .line 2930
    :cond_f
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->updateSuggestions()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2931
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    .line 2932
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 2933
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 2934
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    goto :goto_e
.end method
