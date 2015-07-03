.class public Lcom/android/internal/telephony/KddiEmojiAlphabet;
.super Ljava/lang/Object;
.source "KddiEmojiAlphabet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static final sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

.field private static final sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0xe4a5

    const v6, 0xe4b1

    const v5, 0xe471

    const v4, 0xe4b5

    const v3, 0xe594

    .line 13
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    .line 90
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe000

    const v2, 0xe488

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe001

    const v2, 0xe48d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe002

    const v2, 0xe48c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe003

    const v2, 0xe485

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 94
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe004

    const v2, 0xe487

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe005

    const v2, 0xe469

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 96
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe006

    const v2, 0xe598

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe007

    const v2, 0xeae8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe008

    const v2, 0xeaf1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 100
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe00a

    const v2, 0xeaf4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe00b

    const v2, 0xe5da

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 103
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe00d

    const v2, 0xeaf2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe00e

    const v2, 0xe48a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe00f

    const v2, 0xe48e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe010

    const v2, 0xe4bf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe038

    const v2, 0xeb7c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe03a

    const v2, 0xeb53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 109
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe03b

    const v2, 0xeb5f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 110
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe039

    const v2, 0xe5b3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe011

    const v2, 0xe5a8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 112
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe012

    const v2, 0xe5a9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 113
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe013

    const v2, 0xe5aa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 114
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe014

    const v2, 0xe486

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe016

    const v2, 0xe489

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 117
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb69

    const v2, 0xe48b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb6a

    const v2, 0xe468

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 131
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe01d

    const v2, 0xe57a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe01c

    const v2, 0xe57b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 133
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe02a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 134
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe01b

    const v2, 0xe47c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe02b

    const v2, 0xe48f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe02c

    const v2, 0xe490

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe02d

    const v2, 0xe491

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 138
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe02e

    const v2, 0xe492

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe02f

    const v2, 0xe493

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 140
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe030

    const v2, 0xe494

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 141
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe031

    const v2, 0xe495    # 8.2E-41f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe032

    const v2, 0xe496

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 143
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe033

    const v2, 0xe497

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 144
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe034

    const v2, 0xe498

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 145
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe035

    const v2, 0xe499

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe036

    const v2, 0xe49a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 147
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe037

    const v2, 0xe49b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 148
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe03c

    const v2, 0xe513

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 149
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe03d

    const v2, 0xe4e4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 150
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe03e

    const v2, 0xeb7d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 151
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe03f

    const v2, 0xe4ce

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 152
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe040

    const v2, 0xe4ca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 153
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe041

    const v2, 0xe5ba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 154
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe042

    const v2, 0xe5cd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 155
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe043

    const v2, 0xe5cd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 156
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe045

    const v2, 0xea94

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 157
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe046

    const v2, 0xe4e3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 158
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe047

    const v2, 0xe4e2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 159
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe048

    const v2, 0xea96

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 161
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe04a

    const v2, 0xeb36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 162
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe04b

    const v2, 0xeb37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 163
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe04c

    const v2, 0xeb38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 164
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe04d

    const v2, 0xeb49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 165
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe04e

    const v2, 0xeb82

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 166
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe04f    # 1.457999E-39f

    const v2, 0xe4d2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 167
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe050    # 1.458E-39f

    const v2, 0xeb35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 168
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe051

    const v2, 0xeab9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe052

    const v2, 0xeaba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe053

    const v2, 0xe4d4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe054

    const v2, 0xe4cd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 172
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe055

    const v2, 0xeabb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 173
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe056

    const v2, 0xeabc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe057

    const v2, 0xeb32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 175
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe058

    const v2, 0xeb33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 176
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe059

    const v2, 0xeb34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe05a

    const v2, 0xeb39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 178
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe05b

    const v2, 0xeb5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe190

    const v2, 0xe5a4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe191

    const v2, 0xe5a5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe192

    const v2, 0xead0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 182
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe193

    const v2, 0xead1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 183
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe194

    const v2, 0xeb47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 184
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe195

    const v2, 0xe509

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 185
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe196

    const v2, 0xeaa0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 186
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe197

    const v2, 0xe50b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 187
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe198

    const v2, 0xeaa1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 188
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe199

    const v2, 0xeaa2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe19b

    const v2, 0xe4fc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 191
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe19c

    const v2, 0xe4fa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 192
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe19d

    const v2, 0xe4fc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe19e

    const v2, 0xe4fa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe19f

    const v2, 0xe501

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 196
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a1

    const v2, 0xe5dd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 197
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a2

    const v2, 0xeadb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 198
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a3

    const v2, 0xeae9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 199
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a4

    const v2, 0xeb13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 200
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a5

    const v2, 0xeb14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 201
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a6

    const v2, 0xeb15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 202
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a7

    const v2, 0xeb16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 203
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a8

    const v2, 0xeb17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 204
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a9

    const v2, 0xeb18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 205
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1aa

    const v2, 0xeb19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 206
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1ab

    const v2, 0xeb1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 207
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1ac

    const v2, 0xeb44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 208
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1ad

    const v2, 0xeb45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 209
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1ae

    const v2, 0xe4cb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 210
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1af

    const v2, 0xe5bf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 211
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1b0

    const v2, 0xe50e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 212
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1b1

    const v2, 0xe4ec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 213
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1b2

    const v2, 0xe4ef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 214
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1b3

    const v2, 0xe4f8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 217
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1b6

    const v2, 0xeb1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 218
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1b9

    const v2, 0xeb7e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 219
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d3

    const v2, 0xeb22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 220
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7dc

    const v2, 0xe4d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 221
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d4

    const v2, 0xeb23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 222
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d5

    const v2, 0xeb24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 223
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d6

    const v2, 0xeb25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 224
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1cc

    const v2, 0xeb1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 225
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1cd

    const v2, 0xeb20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 226
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1ce

    const v2, 0xe4d9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 227
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1cf

    const v2, 0xe48f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 228
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c5

    const v2, 0xe5c7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 229
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c6

    const v2, 0xeaec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 230
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1cb

    const v2, 0xeb1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 231
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1da

    const v2, 0xe4dd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 232
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1e1

    const v2, 0xeb57

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 233
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1e2

    const v2, 0xeb58

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 234
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1e3

    const v2, 0xe492

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 235
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c9

    const v2, 0xeb1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 236
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d9

    const v2, 0xe4d3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 237
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1dc

    const v2, 0xe5d4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 238
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1ba

    const v2, 0xe4e0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 239
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1bb

    const v2, 0xeb76

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 240
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c8

    const v2, 0xe4e0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 241
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1dd

    const v2, 0xe5db

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 242
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1bc

    const v2, 0xe4dc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 243
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d8

    const v2, 0xe4df

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 244
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1bd

    const v2, 0xe49a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 245
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c7

    const v2, 0xeb1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 246
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c2

    const v2, 0xe5c2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 247
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c0

    const v2, 0xe5c0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 248
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1b8

    const v2, 0xe4db

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 249
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c3

    const v2, 0xe470

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 250
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1be

    const v2, 0xe4d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 251
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c4

    const v2, 0xe4d9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 252
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1b7

    const v2, 0xe4e1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 253
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1bf

    const v2, 0xe4de

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 254
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c1

    const v2, 0xe5c1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 256
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d0

    const v2, 0xe4e1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 257
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d1

    const v2, 0xeb21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 258
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d2

    const v2, 0xe4d7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 259
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d7

    const v2, 0xe4da

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 260
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1db

    const v2, 0xe4ee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 261
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1de

    const v2, 0xeb3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 262
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1df

    const v2, 0xeb46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 263
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1e0

    const v2, 0xeb48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 264
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe320

    const v2, 0xe472

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 265
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe321

    const v2, 0xeb67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 266
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe322

    const v2, 0xeaca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 268
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe324

    const v2, 0xe5ae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 269
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe325

    const v2, 0xeacb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 270
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe326

    const v2, 0xeac9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 271
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe327

    const v2, 0xe5c4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 272
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe328

    const v2, 0xeac1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 273
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe329

    const v2, 0xe4e7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 276
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe32c

    const v2, 0xeacf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 277
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe32d

    const v2, 0xeace

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 278
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe32e

    const v2, 0xeac7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 279
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe32f

    const v2, 0xeac8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 280
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe330

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 283
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe331

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 286
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe333

    const v2, 0xeb80

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 287
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe334

    const v2, 0xeb64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 288
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe335

    const v2, 0xeacd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 289
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe336

    const v2, 0xe4fb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 291
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe338

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 292
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe339

    const v2, 0xeb69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 293
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe33a

    const v2, 0xe473

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 294
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe33b

    const v2, 0xeac6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 295
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe33c

    const v2, 0xeac2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 296
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe33d

    const v2, 0xeb5d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 297
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe33e

    const v2, 0xeac5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 298
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe33f

    const v2, 0xeac3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 299
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe340

    const v2, 0xeac0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 300
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe341

    const v2, 0xe5c5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 301
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe342

    const v2, 0xeac4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 302
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe343

    const v2, 0xeabf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 303
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe344

    const v2, 0xe5c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 304
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe345

    const v2, 0xe5c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 305
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe346

    const v2, 0xe474

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 306
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe347

    const v2, 0xe5c3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 307
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe348

    const v2, 0xeb61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 308
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe349

    const v2, 0xeb7f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 309
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe34a

    const v2, 0xeb63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 310
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe34b

    const v2, 0xeb60

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 311
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe34c

    const v2, 0xeb65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 312
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe34d

    const v2, 0xeb68

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 313
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe34e

    const v2, 0xeb5e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 314
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe34f

    const v2, 0xeb6a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 315
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe350

    const v2, 0xeb66

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 316
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe351

    const v2, 0xead7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 317
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe352

    const v2, 0xead8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 318
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe353

    const v2, 0xead9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 319
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe354

    const v2, 0xeb50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 320
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe355

    const v2, 0xeb51

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 321
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe356

    const v2, 0xeb52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 322
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe357

    const v2, 0xeb85

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 323
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe358

    const v2, 0xeb86

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 324
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe359

    const v2, 0xeb87

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 325
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe35a

    const v2, 0xeb88

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 326
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe35b

    const v2, 0xead2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 341
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b0

    const v2, 0xe4ab

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 342
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b1

    const v2, 0xeb09

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 343
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b2

    const v2, 0xe4ad

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 344
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b3

    const v2, 0xe5de

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 345
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b4

    const v2, 0xe5df

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 346
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b5

    const v2, 0xe4aa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 347
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b6

    const v2, 0xe4a3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 348
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b7

    const v2, 0xea81

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 349
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b8

    const v2, 0xeaf3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 350
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b9

    const v2, 0xe4a4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 351
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ba

    const v2, 0xea80

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 352
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4bb

    const v2, 0xe5bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 353
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4bc

    const v2, 0xe5cf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 354
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4bd

    const v2, 0xeaf6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 355
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4be

    const v2, 0xeaf7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 356
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4bf

    const v2, 0xeaf8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 357
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4c0

    const v2, 0xeaf9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 358
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4c1

    const v2, 0xe4a9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 359
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4c2

    const v2, 0xe4bd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 360
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4c3

    const v2, 0xe5bd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 361
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4c4

    const v2, 0xe4c0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 363
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4c7

    const v2, 0xe572

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 364
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4c8

    const v2, 0xeb6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 365
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4cc

    const v2, 0xe5b7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 366
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4cd

    const v2, 0xeb2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 367
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d6

    const v2, 0xe51a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 368
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d7

    const v2, 0xe51a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 369
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d8

    const v2, 0xea9f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 370
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe553

    const v2, 0xeb2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 371
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ce

    const v2, 0xe4fe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 372
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4cf

    const v2, 0xe5b6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 373
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d0

    const v2, 0xeb77

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 374
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d1

    const v2, 0xe5c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 375
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d3

    const v2, 0xea93

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 376
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d4

    const v2, 0xea9e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 377
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d5

    const v2, 0xeb6b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 378
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d9

    const v2, 0xeaa3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 379
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4da

    const v2, 0xeaa4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 380
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4db

    const v2, 0xe50d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 381
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4dc

    const v2, 0xe504

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 382
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4f0

    const v2, 0xe49c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 384
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4dd

    const v2, 0xe4c7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 386
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4df

    const v2, 0xe5dc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 387
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e0

    const v2, 0xe579

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 388
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e1

    const v2, 0xe57c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 389
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e2

    const v2, 0xe57d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 390
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e3

    const v2, 0xe585

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 391
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e4

    const v2, 0xeb5b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 392
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ed

    const v2, 0xeb11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 393
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e8

    const v2, 0xeb0e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 394
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4eb

    const v2, 0xe5d5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 395
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e7

    const v2, 0xeafa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 396
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ea

    const v2, 0xeb10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 397
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e9

    const v2, 0xeb0f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 398
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e5

    const v2, 0xe4cc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 399
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ee

    const v2, 0xeb12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 400
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ec

    const v2, 0xe5d6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 401
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e6

    const v2, 0xe573

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 402
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4f6

    const v2, 0xe47b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 403
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4fb

    const v2, 0xe583

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 404
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4c9

    const v2, 0xe587

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 405
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ca

    const v2, 0xe5cb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 406
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4cb

    const v2, 0xe581

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 407
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4fa

    const v2, 0xe57f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 408
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4f5

    const v2, 0xe50a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 409
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4f7

    const v2, 0xea8f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 410
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4f8

    const v2, 0xea8f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 411
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe044

    const v2, 0xe480

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 412
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d2

    const v2, 0xe5c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 413
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe509

    const v2, 0xe510

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 414
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe50a

    const v2, 0xea9a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 415
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe50b

    const v2, 0xeb26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 416
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe50c

    const v2, 0xeb27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 417
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe50d

    const v2, 0xeb29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 418
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe50e

    const v2, 0xeb28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 419
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe50f

    const v2, 0xe59f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 420
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe510

    const v2, 0xe4cf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 421
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe511

    const v2, 0xe5a0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 422
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe512

    const v2, 0xe4c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 423
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe513

    const v2, 0xeaf0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 424
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe514

    const v2, 0xe5d9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 425
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe515

    const v2, 0xe5cc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 426
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe516

    const v2, 0xea9b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 427
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe517

    const v2, 0xea9c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 428
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe518

    const v2, 0xeae3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 429
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe519

    const v2, 0xeae4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 430
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe51a

    const v2, 0xeae5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 431
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe51b

    const v2, 0xeae6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 432
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe51c

    const v2, 0xeae7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 433
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe51d

    const v2, 0xeaeb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 434
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe51e

    const v2, 0xeaed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 435
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe51f

    const v2, 0xeaee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 436
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe520

    const v2, 0xe46f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 437
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe521

    const v2, 0xeb3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 438
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe017

    const v2, 0xeaef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 439
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe522

    const v2, 0xe59b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 440
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe523

    const v2, 0xe596

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 441
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe524

    const v2, 0xe51e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 442
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe525

    const v2, 0xe588

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 443
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe526

    const v2, 0xeb08

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 444
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe527

    const v2, 0xea92

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 445
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe528

    const v2, 0xe520

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 446
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe529

    const v2, 0xe521

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 447
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe52a

    const v2, 0xe591

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 448
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe52b

    const v2, 0xeb62

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 449
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe52c

    const v2, 0xe51b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 450
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe52d

    const v2, 0xeb0a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 451
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe52e

    const v2, 0xe51b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 452
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe822

    const v2, 0xe58b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 454
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe530

    const v2, 0xe511

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 455
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe531

    const v2, 0xe4a8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 456
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe533

    const v2, 0xe592

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 457
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe534

    const v2, 0xe593

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 458
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe535

    const v2, 0xe51f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 459
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb92

    const v2, 0xeb71

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 460
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb7c

    const v2, 0xeafd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 461
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb7d

    const v2, 0xeafe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 462
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb7e

    const v2, 0xeaff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 463
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb7f

    const v2, 0xeb00

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 464
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb80

    const v2, 0xeb55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 465
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe536

    const v2, 0xeb03

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 467
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe538

    const v2, 0xe5b8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 468
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe539

    const v2, 0xe4a1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 469
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe53a

    const v2, 0xe4a0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 470
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe53b

    const v2, 0xe5ce

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 471
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe53c

    const v2, 0xe582

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 472
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe53d

    const v2, 0xe562

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 473
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe81d

    const v2, 0xe50c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 474
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe81e

    const v2, 0xe50c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 475
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe53e

    const v2, 0xe516

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 476
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe53f

    const v2, 0xe560

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 477
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe540

    const v2, 0xe561

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 478
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe541

    const v2, 0xe569

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 479
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe542

    const v2, 0xe563

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 480
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe543

    const v2, 0xe58f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 481
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe544

    const v2, 0xe590

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 482
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe545

    const v2, 0xe56b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 483
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe546

    const v2, 0xe49f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 484
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe547

    const v2, 0xe49d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 485
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe502

    const v2, 0xe568

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 486
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ff

    const v2, 0xe565

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 487
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe500

    const v2, 0xe566

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 488
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe501

    const v2, 0xe567

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 489
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe503

    const v2, 0xe56f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 490
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe504

    const v2, 0xe51d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 491
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4fd

    const v2, 0xe55f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 492
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe548

    const v2, 0xe564

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 493
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe549

    const v2, 0xe56a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 494
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe54a

    const v2, 0xe574

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 495
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe54b

    const v2, 0xe575

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 496
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe54c

    const v2, 0xe576

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 497
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe54d

    const v2, 0xe56c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 498
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe54e

    const v2, 0xe56d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 499
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe54f

    const v2, 0xe56e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 500
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe550

    const v2, 0xe570

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 501
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe551

    const v2, 0xe4a2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 502
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe552

    const v2, 0xeb0b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 504
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d1

    const v2, 0xe4ba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 505
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d2

    const v2, 0xe599

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 506
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d3

    const v2, 0xe4b7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 507
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d4

    const v2, 0xe4b6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 508
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d5

    const v2, 0xeaac

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 509
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d6

    const v2, 0xe59a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 510
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d7

    const v2, 0xe4b9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 511
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d8

    const v2, 0xe4b8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 512
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d9

    const v2, 0xe46b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 513
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7da

    const v2, 0xeb41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 514
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7db

    const v2, 0xe5d3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 515
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7dd

    const v2, 0xe4bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 516
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7de

    const v2, 0xeade

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 517
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7df

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 518
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e0

    const v2, 0xe5bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 519
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e1

    const v2, 0xe5bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 521
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e3

    const v2, 0xe4b0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 522
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e4

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 523
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e5

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 524
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e6

    const v2, 0xe4af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 525
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e7

    const v2, 0xe4a7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 526
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e8

    const v2, 0xea82

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 527
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e9

    const v2, 0xe4b3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 528
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7ea

    const v2, 0xe4b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 529
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7ec

    const v2, 0xeb6d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 530
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7ed

    const v2, 0xe5c8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 531
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7ee

    const v2, 0xe4b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 532
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7ef

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 533
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f1

    const v2, 0xe4b2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 534
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f2

    const v2, 0xeadf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 535
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f3

    const v2, 0xeae0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 536
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f4

    const v2, 0xeae1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 537
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f5

    const v2, 0xe571

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 538
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f6

    const v2, 0xe4a6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 539
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f7

    const v2, 0xe46a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 540
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f8

    const v2, 0xe5d7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 541
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f9

    const v2, 0xeb73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 542
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7fa

    const v2, 0xe4bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 543
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7fb

    const v2, 0xe5d0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 545
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7fd

    const v2, 0xe46d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 546
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7fe

    const v2, 0xeae2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 547
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7ff

    const v2, 0xeb42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 548
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe800

    const v2, 0xe503

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 549
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe801

    const v2, 0xe517

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 550
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe802

    const v2, 0xe517

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 551
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe803

    const v2, 0xe508

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 552
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe804

    const v2, 0xe59c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 553
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe805

    const v2, 0xeaf5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 554
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe806

    const v2, 0xe59e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 555
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe807

    const v2, 0xe49e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 556
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe808

    const v2, 0xe4be

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 557
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe809

    const v2, 0xe59d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 558
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe80a

    const v2, 0xe4c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 559
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe80b

    const v2, 0xe5d1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 560
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe80c

    const v2, 0xe4c5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 561
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe80d

    const v2, 0xe46e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 562
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe80e

    const v2, 0xeadd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 563
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe80f

    const v2, 0xe4c8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 564
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe810

    const v2, 0xeb43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 565
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe811

    const v2, 0xeb6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 566
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe812

    const v2, 0xeb6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 567
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe813

    const v2, 0xe5be

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 568
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe814

    const v2, 0xe505

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 570
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe816

    const v2, 0xe506

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 571
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe817

    const v2, 0xeb40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 572
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe818

    const v2, 0xeadc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 573
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe819

    const v2, 0xe507

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 574
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe81a

    const v2, 0xeacc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 576
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ef

    const v2, 0xe515

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 577
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4f9

    const v2, 0xe57e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 578
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe81c

    const v2, 0xe502

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 579
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe81f

    const v2, 0xe5b9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 580
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe820

    const v2, 0xe580

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 581
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe823

    const v2, 0xe4eb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 582
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe824

    const v2, 0xeb78

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 583
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe825

    const v2, 0xe514

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 584
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe826

    const v2, 0xe514

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 585
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe827

    const v2, 0xe5ca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 586
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe828

    const v2, 0xea95

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 587
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe829

    const v2, 0xeada

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 588
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe82a

    const v2, 0xe5bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 589
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb25

    const v2, 0xea83

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 590
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb29

    const v2, 0xe558

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 591
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb2d

    const v2, 0xe559

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 592
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb2a

    const v2, 0xe54e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 593
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb47

    const v2, 0xe533

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 594
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe82c

    const v2, 0xeb84

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 595
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe82e

    const v2, 0xe522

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 596
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe82f

    const v2, 0xe523

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 597
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe830

    const v2, 0xe524

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 598
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe831

    const v2, 0xe525

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 599
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe832

    const v2, 0xe526

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 600
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe833

    const v2, 0xe527

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 601
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe834

    const v2, 0xe528

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 602
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe835

    const v2, 0xe529

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 603
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe836

    const v2, 0xe52a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 604
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe837

    const v2, 0xe5ac

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 605
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe83b

    const v2, 0xe52b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 606
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe838

    const v2, 0xea84

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 607
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe839

    const v2, 0xea90

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 608
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe83a

    const v2, 0xea91

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 609
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe960

    const v2, 0xe4d6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 610
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe961

    const v2, 0xe4d5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 611
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe962

    const v2, 0xe4d0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 612
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe963

    const v2, 0xe5b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 613
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe964

    const v2, 0xeaaf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 614
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe965

    const v2, 0xe4d1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 615
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe966

    const v2, 0xeab0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 616
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe967

    const v2, 0xeab1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 617
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe968

    const v2, 0xeab2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 618
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe969

    const v2, 0xeab3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 619
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe96a

    const v2, 0xeab4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 620
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe96b

    const v2, 0xeab5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 621
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe96c

    const v2, 0xeab6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 622
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe96d

    const v2, 0xeab7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 623
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe96e

    const v2, 0xeab8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 624
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe96f

    const v2, 0xeabd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 625
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe970

    const v2, 0xeabe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 626
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe971

    const v2, 0xeaea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 627
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe972

    const v2, 0xe4c4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 628
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe973

    const v2, 0xe4ed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 629
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe974

    const v2, 0xeb3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 630
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe975

    const v2, 0xeb3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 631
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe976

    const v2, 0xeb3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 632
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe977

    const v2, 0xeb4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 633
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe978

    const v2, 0xeb4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 634
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe979

    const v2, 0xeb4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 635
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe97a

    const v2, 0xeb4d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 636
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe97b

    const v2, 0xeb4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 637
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe97c

    const v2, 0xeb4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 638
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe97d

    const v2, 0xeb56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 639
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe97e

    const v2, 0xeb59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 640
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe97f

    const v2, 0xeb70

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 641
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe980

    const v2, 0xe4ac

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 642
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe981

    const v2, 0xe597

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 643
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe982

    const v2, 0xe4c2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 644
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe983

    const v2, 0xe4c3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 645
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe984

    const v2, 0xeaae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 646
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe985

    const v2, 0xea97

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 647
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe986

    const v2, 0xe4c1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 648
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe987

    const v2, 0xea98

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 649
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe988

    const v2, 0xeb3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 650
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf0

    const v2, 0xe555

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 651
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf1

    const v2, 0xe54d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 652
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf2

    const v2, 0xe54c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 653
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf3

    const v2, 0xe556

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 654
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf4

    const v2, 0xeb2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 655
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf5

    const v2, 0xeb2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 656
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf6

    const v2, 0xeb7a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 657
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf7

    const v2, 0xeb7b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 658
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf8

    const v2, 0xe53f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 659
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf9

    const v2, 0xe540

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 660
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeafa

    const v2, 0xe552

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 661
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeafb

    const v2, 0xe553

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 662
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeafc

    const v2, 0xe52e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 663
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeafd

    const v2, 0xe52d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 664
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeafe

    const v2, 0xe530

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 665
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaff

    const v2, 0xe52f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 666
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb03

    const v2, 0xe545

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 667
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb02

    const v2, 0xe544

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 668
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb78

    const v2, 0xe55a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 669
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb79

    const v2, 0xe55b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 670
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb01

    const v2, 0xe543

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 671
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb00

    const v2, 0xe542

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 672
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb44

    const v2, 0xeaad

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 673
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb45

    const v2, 0xe550

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 674
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb46

    const v2, 0xe551

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 675
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb04

    const v2, 0xe482

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 676
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb05

    const v2, 0xeb2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 677
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb06

    const v2, 0xeb30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 678
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb09

    const v2, 0xe483

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 679
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb0a

    const v2, 0xe483

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 680
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb0b

    const v2, 0xe482

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 682
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb08

    const v2, 0xeb31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 684
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb0c

    const v2, 0xe595

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 685
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb0d

    const v2, 0xeb75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 686
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb0e

    const v2, 0xe477

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 687
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb0f

    const v2, 0xe478

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 688
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb10

    const v2, 0xeaa6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 689
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb11

    const v2, 0xeb75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 690
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb12

    const v2, 0xe4ea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 691
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb13

    const v2, 0xeaa7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 692
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb14

    const v2, 0xeaa8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 693
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb15

    const v2, 0xeaa9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 694
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb16

    const v2, 0xeaaa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 695
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb17

    const v2, 0xeb54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 696
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb18

    const v2, 0xe5af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 697
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb19

    const v2, 0xe595

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 698
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb1a

    const v2, 0xeaa5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 699
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb1b

    const v2, 0xe5a1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 700
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb1c

    const v2, 0xe5a2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 701
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb1d

    const v2, 0xe5a3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 702
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb1e

    const v2, 0xe47d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 703
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb1f

    const v2, 0xe47e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 704
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb20

    const v2, 0xe47f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 705
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb22

    const v2, 0xeb2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 706
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb23

    const v2, 0xe481

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 707
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb26

    const v2, 0xe484

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 708
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb2c

    const v2, 0xeb79

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 709
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7eb

    const v2, 0xe4ae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 710
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f0

    const v2, 0xeb72

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 713
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe505

    const v2, 0xe5d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 714
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe506

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 715
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe507

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 716
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe508

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 717
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb35

    const v2, 0xeb18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 719
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb48

    const v2, 0xe541

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 720
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb49

    const v2, 0xe557

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 721
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb84

    const v2, 0xe5ab

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 722
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb38

    const v2, 0xea85

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 723
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb21

    const v2, 0xe578

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 724
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb81

    const v2, 0xea88

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 725
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb36

    const v2, 0xe5b5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 727
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb27

    const v2, 0xe5ad

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 728
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb4f

    const v2, 0xe4e8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 729
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb37

    const v2, 0xe50f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 730
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb32

    const v2, 0xe5d2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 732
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb3f

    const v2, 0xea87

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 734
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb2f

    const v2, 0xea8a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 736
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb31

    const v2, 0xea89

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 741
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb3e

    const v2, 0xea86

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 742
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb40

    const v2, 0xea8b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 743
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb41

    const v2, 0xea8c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 744
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb2b

    const v2, 0xe4f1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 745
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb43

    const v2, 0xea99

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 746
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb3d

    const v2, 0xe4f7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 747
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb50

    const v2, 0xeb01

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 748
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb51

    const v2, 0xe53c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 749
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb52

    const v2, 0xe53d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 750
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb53

    const v2, 0xe54f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 751
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb54

    const v2, 0xe554

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 753
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb56

    const v2, 0xe476

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 754
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb57

    const v2, 0xe4e5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 755
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb58

    const v2, 0xe47a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 756
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb59

    const v2, 0xe475

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 757
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb5a

    const v2, 0xe5b0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 758
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb5b

    const v2, 0xe5b1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 759
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb5c

    const v2, 0xe4e6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 760
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb5d

    const v2, 0xe4f4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 761
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4f4

    const v2, 0xe4f5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 762
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb5e

    const v2, 0xe4e9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 763
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb5f

    const v2, 0xeb5c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 764
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe532

    const v2, 0xe4fd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 765
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb60

    const v2, 0xeaab

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 766
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb61

    const v2, 0xe479

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 767
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb62

    const v2, 0xe53e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 768
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb65

    const v2, 0xe53a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 769
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb66

    const v2, 0xe53b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 770
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb63

    const v2, 0xe54a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 771
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb64

    const v2, 0xe54b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 772
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb64

    const v2, 0xe54b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 773
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb67

    const v2, 0xe54b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 774
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb68

    const v2, 0xe48b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 775
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb6b

    const v2, 0xe548

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 776
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb6c

    const v2, 0xe549

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 777
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb6d

    const v2, 0xe531

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 778
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb6e

    const v2, 0xe532

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 779
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb6f

    const v2, 0xe534

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 780
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb70

    const v2, 0xe535

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 781
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb71

    const v2, 0xe538

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 782
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb72

    const v2, 0xe539

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 783
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb73

    const v2, 0xe546

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 784
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb74

    const v2, 0xe547

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 785
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb75

    const v2, 0xe536

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 786
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb76    # 1.462E-39f

    const v2, 0xe537

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 787
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb77

    const v2, 0xe46c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 788
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb7a

    const v2, 0xe4f0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 789
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb7b

    const v2, 0xe4f2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 790
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb83

    const v2, 0xe55d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 791
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb88

    const v2, 0xe55c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 792
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb91

    const v2, 0xeb0d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 794
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4fc

    const v2, 0xe584

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 795
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4fe

    const v2, 0xe589

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 796
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb85

    const v2, 0xe518

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 797
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb8d

    const v2, 0xeb05

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 798
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb86

    const v2, 0xe51c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 799
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb87

    const v2, 0xe51c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 800
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb90

    const v2, 0xeb0c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 801
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb8a

    const v2, 0xeafc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 802
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb82

    const v2, 0xe519

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 803
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4f2

    const v2, 0xe512

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 804
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb8b

    const v2, 0xeb02

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 805
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb8c

    const v2, 0xeb04

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 806
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb8f

    const v2, 0xeb07

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 807
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb4b

    const v2, 0xe58a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 808
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb8e

    const v2, 0xeb06

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 813
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb4c

    const v2, 0xe58c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 814
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb4d

    const v2, 0xe58d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 815
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb4e

    const v2, 0xe58e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 816
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb4a

    const v2, 0xe55e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 817
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb93

    const v2, 0xeb83

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 818
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb95

    const v2, 0xe5a7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 819
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb94

    const v2, 0xe5a6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 820
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb96

    const v2, 0xe4f3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 821
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb97

    const v2, 0xe4f9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 822
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb98

    const v2, 0xe4f6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 823
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb99

    const v2, 0xea8d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 824
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb9a

    const v2, 0xea8e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 825
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb9b

    const v2, 0xe4ff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 826
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb9c

    const v2, 0xe500

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 827
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb9d

    const v2, 0xead6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 828
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb9e

    const v2, 0xead3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 829
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb9f

    const v2, 0xead4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 830
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeba0

    const v2, 0xead5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 831
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeba1

    const v2, 0xead6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 845
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee1c

    const v2, 0xe517

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 868
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee33

    const v2, 0xeb02

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 869
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee40    # 1.463E-39f

    const v2, 0xe577

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 870
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee41

    const v2, 0xe5b2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 871
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee42

    const v2, 0xea9d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 872
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee43

    const v2, 0xeb74

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 873
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee44

    const v2, 0xeb81

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 874
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee45

    const v2, 0xeb89

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 875
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee46

    const v2, 0xeb8a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 876
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee47

    const v2, 0xeb8b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 877
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee48

    const v2, 0xeb8c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 878
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee49

    const v2, 0xeb8d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 879
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee4a

    const v2, 0xeb8e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 880
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb89

    const v2, 0xeafb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 881
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe83c

    const v2, 0xe586

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 897
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe82d

    const v2, 0xe52c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 902
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2600

    const v2, 0xe488

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 903
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2601

    const v2, 0xe48d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 904
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2614

    const v2, 0xe48c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 905
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26c4

    const v2, 0xe485

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 906
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26a1

    const v2, 0xe487

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 907
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f300

    const v2, 0xe469

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 908
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f301

    const v2, 0xe598

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 909
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f302

    const v2, 0xeae8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 910
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f303

    const v2, 0xeaf1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 911
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f304

    const v2, 0xeaf4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 912
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f305

    const v2, 0xeaf4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 913
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f306

    const v2, 0xe5da

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 914
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f307

    const v2, 0xe5da

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 915
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f308

    const v2, 0xeaf2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 916
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2744

    const v2, 0xe48a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 917
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26c5

    const v2, 0xe48e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 918
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f309

    const v2, 0xe4bf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 919
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f30a

    const v2, 0xeb7c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 920
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f30b

    const v2, 0xeb53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 921
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f30c

    const v2, 0xeb5f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 922
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f30f

    const v2, 0xe5b3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 923
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f311

    const v2, 0xe5a8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 924
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f314

    const v2, 0xe5a9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 925
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f313

    const v2, 0xe5aa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 926
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f319

    const v2, 0xe486

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 928
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f31b

    const v2, 0xe489

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 929
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f31f

    const v2, 0xe48b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 930
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f320

    const v2, 0xe468

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 931
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f550

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 932
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f551

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 933
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f552

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 934
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f553

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 935
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f554

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 936
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f555

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 937
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f556

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 938
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f557

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 939
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f558

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 940
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f559

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 941
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f55a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 942
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f55b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 943
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x231a

    const v2, 0xe57a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 944
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x231b

    const v2, 0xe57b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 945
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x23f0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 947
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x23f3

    const v2, 0xe47c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 948
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2648

    const v2, 0xe48f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 949
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2649

    const v2, 0xe490

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 950
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x264a

    const v2, 0xe491

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 951
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x264b

    const v2, 0xe492

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 952
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x264c

    const v2, 0xe493

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 953
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x264d

    const v2, 0xe494

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 954
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x264e

    const v2, 0xe495    # 8.2E-41f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 955
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x264f

    const v2, 0xe496

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 956
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2650

    const v2, 0xe497

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 957
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2651

    const v2, 0xe498

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 958
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2652

    const v2, 0xe499

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 959
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2653

    const v2, 0xe49a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 960
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26ce

    const v2, 0xe49b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 961
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f340

    const v2, 0xe513

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 962
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f337

    const v2, 0xe4e4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 963
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f331

    const v2, 0xeb7d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 964
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f341

    const v2, 0xe4ce

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 965
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f338

    const v2, 0xe4ca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 966
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f339

    const v2, 0xe5ba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 967
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f342

    const v2, 0xe5cd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 968
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f343

    const v2, 0xe5cd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 969
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f33a

    const v2, 0xea94

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 970
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f33b

    const v2, 0xe4e3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 971
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f334

    const v2, 0xe4e2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 972
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f335

    const v2, 0xea96

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 974
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f33d

    const v2, 0xeb36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 975
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f344

    const v2, 0xeb37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 976
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f330

    const v2, 0xeb38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 977
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f33c

    const v2, 0xeb49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 978
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f33f

    const v2, 0xeb82

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 979
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f352

    const v2, 0xe4d2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 980
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f34c

    const v2, 0xeb35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 981
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f34e

    const v2, 0xeab9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 982
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f34a

    const v2, 0xeaba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 983
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f353

    const v2, 0xe4d4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 984
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f349

    const v2, 0xe4cd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 985
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f345

    const v2, 0xeabb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 986
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f346

    const v2, 0xeabc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 987
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f348

    const v2, 0xeb32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 988
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f34d

    const v2, 0xeb33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 989
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f347

    const v2, 0xeb34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 990
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f351

    const v2, 0xeb39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 991
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f34f

    const v2, 0xeb5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 992
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f440

    const v2, 0xe5a4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 993
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f442

    const v2, 0xe5a5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 994
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f443

    const v2, 0xead0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 995
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f444

    const v2, 0xead1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 996
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f445

    const v2, 0xeb47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 997
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f484

    const v2, 0xe509

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 998
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f485

    const v2, 0xeaa0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 999
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f486

    const v2, 0xe50b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1000
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f487

    const v2, 0xeaa1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1001
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f488

    const v2, 0xeaa2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1003
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f466

    const v2, 0xe4fc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1004
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f467

    const v2, 0xe4fa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1005
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f468

    const v2, 0xe4fc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1006
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f469

    const v2, 0xe4fa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1007
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f46a

    const v2, 0xe501

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1008
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f46b

    const v2, 0xeada

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1009
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f46e

    const v2, 0xe5dd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1010
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f46f

    const v2, 0xeadb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1011
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f470

    const v2, 0xeae9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1012
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f471

    const v2, 0xeb13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1013
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f472

    const v2, 0xeb14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1014
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f473

    const v2, 0xeb15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1015
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f474

    const v2, 0xeb16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1016
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f475

    const v2, 0xeb17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1017
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f476

    const v2, 0xeb18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1018
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f477

    const v2, 0xeb19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1019
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f478

    const v2, 0xeb1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1020
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f479

    const v2, 0xeb44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1021
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f47a

    const v2, 0xeb45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1022
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f47b

    const v2, 0xe4cb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1023
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f47c

    const v2, 0xe5bf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1024
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f47d

    const v2, 0xe50e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1025
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f47e

    const v2, 0xe4ec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1026
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f47f

    const v2, 0xe4ef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1027
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f480

    const v2, 0xe4f8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1030
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f483

    const v2, 0xeb1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1031
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f40c

    const v2, 0xeb7e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1032
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f40d

    const v2, 0xeb22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1033
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f40e

    const v2, 0xe4d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1034
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f414

    const v2, 0xeb23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1035
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f417

    const v2, 0xeb24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1036
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f42b

    const v2, 0xeb25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1037
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f418

    const v2, 0xeb1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1038
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f428

    const v2, 0xeb20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1039
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f412

    const v2, 0xe4d9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1041
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f419

    const v2, 0xe5c7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1042
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f41a

    const v2, 0xeaec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1043
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f41b

    const v2, 0xeb1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1044
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f41c

    const v2, 0xe4dd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1045
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f41d

    const v2, 0xeb57

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1046
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f41e

    const v2, 0xeb58

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1047
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f420

    const v2, 0xeb1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1048
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f421

    const v2, 0xe4d3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1049
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f422

    const v2, 0xe5d4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1050
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f424

    const v2, 0xe4e0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1051
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f425

    const v2, 0xeb76

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1052
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f426

    const v2, 0xe4e0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1053
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f423

    const v2, 0xe5db

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1054
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f427

    const v2, 0xe4dc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1055
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f429

    const v2, 0xe4df

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1056
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f41f

    const v2, 0xe4d3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1057
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f42c

    const v2, 0xeb1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1058
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f42d

    const v2, 0xe5c2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1059
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f42f

    const v2, 0xe5c0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1060
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f431

    const v2, 0xe4db

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1061
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f433

    const v2, 0xe470

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1062
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f434

    const v2, 0xe4d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1063
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f435

    const v2, 0xe4d9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1064
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f436

    const v2, 0xe4e1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1065
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f437

    const v2, 0xe4de

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1066
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f43b

    const v2, 0xe5c1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1068
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f43a

    const v2, 0xe4e1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1069
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f42e

    const v2, 0xeb21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1070
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f430

    const v2, 0xe4d7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1071
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f438

    const v2, 0xe4da

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1072
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f43e

    const v2, 0xe4ee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1073
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f432

    const v2, 0xeb3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1074
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f43c

    const v2, 0xeb46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1075
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f43d

    const v2, 0xeb48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1076
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f620

    const v2, 0xe472

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1077
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f629

    const v2, 0xeb67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1078
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f632

    const v2, 0xeaca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1079
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f61e

    const v2, 0xeac0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1080
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f635

    const v2, 0xe5ae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1081
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f630

    const v2, 0xeacb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1082
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f612

    const v2, 0xeac9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1083
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f60d

    const v2, 0xe5c4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1084
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f624

    const v2, 0xeac1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1085
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f61c

    const v2, 0xe4e7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1086
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f61d

    const v2, 0xe4e7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1087
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f60b

    const v2, 0xeacd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1088
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f618

    const v2, 0xeacf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1089
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f61a

    const v2, 0xeace

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1090
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f637

    const v2, 0xeac7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1091
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f633

    const v2, 0xeac8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1092
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f603

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1093
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f605

    const v2, 0xe5c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1094
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f606

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1095
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f601

    const v2, 0xeb80

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1096
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f602

    const v2, 0xeb64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1097
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f60a

    const v2, 0xeacd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1098
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x263a

    const v2, 0xe4fb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1099
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f604

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1100
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f622

    const v2, 0xeb69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1101
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f62d

    const v2, 0xe473

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1102
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f628

    const v2, 0xeac6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1103
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f623

    const v2, 0xeac2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1104
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f621

    const v2, 0xeb5d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1105
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f60c

    const v2, 0xeac5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1106
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f616

    const v2, 0xeac3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1107
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f614

    const v2, 0xeac0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1108
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f631

    const v2, 0xe5c5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1109
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f62a

    const v2, 0xeac4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1110
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f60f

    const v2, 0xeabf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1111
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f613

    const v2, 0xe5c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1112
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f625

    const v2, 0xe5c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1113
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f62b

    const v2, 0xe474

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1114
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f609

    const v2, 0xe5c3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1115
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f63a

    const v2, 0xeb61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1116
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f638

    const v2, 0xeb7f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1117
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f639

    const v2, 0xeb63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1118
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f63d

    const v2, 0xeb60

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1119
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f63b

    const v2, 0xeb65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1120
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f63f

    const v2, 0xeb68

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1121
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f63e

    const v2, 0xeb5e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1122
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f63c

    const v2, 0xeb6a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1123
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f640

    const v2, 0xeb66

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1124
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f645

    const v2, 0xead7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1125
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f646

    const v2, 0xead8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1126
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f647

    const v2, 0xead9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1127
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f648

    const v2, 0xeb50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1128
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f64a

    const v2, 0xeb51

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1129
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f649

    const v2, 0xeb52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1130
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f64b

    const v2, 0xeb85

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1131
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f64c

    const v2, 0xeb86

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1132
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f64d

    const v2, 0xeb87

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1133
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f64e

    const v2, 0xeb88

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1134
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f64f

    const v2, 0xead2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1135
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e0

    const v2, 0xe4ab

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1136
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e1

    const v2, 0xeb09

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1137
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e2

    const v2, 0xe4ad

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1138
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e3

    const v2, 0xe5de

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1139
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e5

    const v2, 0xe5df

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1140
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e6

    const v2, 0xe4aa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1141
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e7

    const v2, 0xe4a3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1142
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e8

    const v2, 0xea81

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1143
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e9

    const v2, 0xeaf3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1144
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ea

    const v2, 0xe4a4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1145
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3eb

    const v2, 0xea80

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1146
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26ea

    const v2, 0xe5bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1147
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26f2

    const v2, 0xe5cf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1148
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ec

    const v2, 0xeaf6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1149
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ef

    const v2, 0xeaf7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1150
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3f0

    const v2, 0xeaf8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1151
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ed

    const v2, 0xeaf9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1152
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2693

    const v2, 0xe4a9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1153
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ee

    const v2, 0xe4bd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1154
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f5fb

    const v2, 0xe5bd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1155
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f5fc

    const v2, 0xe4c0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1157
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f5fe

    const v2, 0xe572

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1158
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f5ff

    const v2, 0xeb6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1159
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f45e

    const v2, 0xe5b7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1160
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f45f

    const v2, 0xeb2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1161
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f460

    const v2, 0xe51a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1162
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f461

    const v2, 0xe51a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1163
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f462

    const v2, 0xea9f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1164
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f463

    const v2, 0xeb2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1165
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f453

    const v2, 0xe4fe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1166
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f455

    const v2, 0xe5b6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1167
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f456

    const v2, 0xeb77

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1168
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f451

    const v2, 0xe5c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1169
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f454

    const v2, 0xea93

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1170
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f452

    const v2, 0xea9e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1171
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f457

    const v2, 0xeb6b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1172
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f458

    const v2, 0xeaa3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1173
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f459

    const v2, 0xeaa4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1174
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f45a

    const v2, 0xe50d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1175
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f45b

    const v2, 0xe504

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1176
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f45c

    const v2, 0xe49c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1178
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4b0

    const v2, 0xe4c7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1180
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4b9

    const v2, 0xe5dc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1181
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4b2

    const v2, 0xe579

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1182
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4b3

    const v2, 0xe57c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1183
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4b4

    const v2, 0xe57d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1184
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4b5

    const v2, 0xe585

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1185
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4b8

    const v2, 0xeb5b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1224
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f525

    const v2, 0xe47b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1225
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f526

    const v2, 0xe583

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1226
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f527

    const v2, 0xe587

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1227
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f528

    const v2, 0xe5cb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1228
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f529

    const v2, 0xe581

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1229
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f52a

    const v2, 0xe57f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1230
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f52b

    const v2, 0xe50a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1231
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f52e

    const v2, 0xea8f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1232
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f52f

    const v2, 0xea8f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1233
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f530

    const v2, 0xe480

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1234
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f531

    const v2, 0xe5c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1235
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f489

    const v2, 0xe510

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1236
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f48a

    const v2, 0xea9a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1237
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f170

    const v2, 0xeb26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1238
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f171

    const v2, 0xeb27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1239
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f18e

    const v2, 0xeb29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1240
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f17e

    const v2, 0xeb28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1241
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f380

    const v2, 0xe59f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1242
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f381

    const v2, 0xe4cf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1243
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f382

    const v2, 0xe5a0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1244
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f384

    const v2, 0xe4c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1245
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f385

    const v2, 0xeaf0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1246
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f38c

    const v2, 0xe5d9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1247
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f386

    const v2, 0xe5cc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1248
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f388

    const v2, 0xea9b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1249
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f389

    const v2, 0xea9c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1250
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f38d

    const v2, 0xeae3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1251
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f38e

    const v2, 0xeae4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1252
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f393

    const v2, 0xeae5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1253
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f392

    const v2, 0xeae6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1254
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f38f

    const v2, 0xeae7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1255
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f387

    const v2, 0xeaeb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1256
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f390

    const v2, 0xeaed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1257
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f383

    const v2, 0xeaee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1258
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f38a

    const v2, 0xe46f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1259
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f38b

    const v2, 0xeb3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1260
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f391

    const v2, 0xeaef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1261
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4df

    const v2, 0xe59b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1262
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x260e

    const v2, 0xe596

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1264
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4de

    const v2, 0xe51e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1265
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f1

    const v2, 0xe588

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1266
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f2

    const v2, 0xeb08

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1267
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4dd

    const v2, 0xea92

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1268
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e0

    const v2, 0xe520

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1269
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2709

    const v2, 0xe521

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1270
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e8

    const v2, 0xe591

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1271
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e9

    const v2, 0xeb62

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1272
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ea

    const v2, 0xeb0a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1273
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4eb

    const v2, 0xeb0a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1274
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ee

    const v2, 0xe51b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1275
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f0

    const v2, 0xe58b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1276
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e2

    const v2, 0xe511

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1277
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e3

    const v2, 0xe511

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1278
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e1

    const v2, 0xe4a8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1279
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e4

    const v2, 0xe592

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1280
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e5

    const v2, 0xe593

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1281
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e6

    const v2, 0xe51f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1282
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e7

    const v2, 0xeb71

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1283
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f520

    const v2, 0xeafd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1284
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f521

    const v2, 0xeafe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1285
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f522

    const v2, 0xeaff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1286
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f523

    const v2, 0xeb00

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1287
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f524

    const v2, 0xeb55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1288
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2712

    const v2, 0xeb03

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1290
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4bb

    const v2, 0xe5b8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1291
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x270f

    const v2, 0xe4a1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1292
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ce

    const v2, 0xe4a0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1293
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4bc

    const v2, 0xe5ce

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1294
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4bd

    const v2, 0xe582

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1295
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4be

    const v2, 0xe562

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1296
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4bf

    const v2, 0xe50c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1297
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c0

    const v2, 0xe50c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1298
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2702

    const v2, 0xe516

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1299
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4cd

    const v2, 0xe560

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1300
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c3

    const v2, 0xe561

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1301
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c4

    const v2, 0xe569

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1302
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c5

    const v2, 0xe563

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1303
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c1

    const v2, 0xe58f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1304
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c2

    const v2, 0xe590

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1305
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d3

    const v2, 0xe56b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1306
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d6

    const v2, 0xe49f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1307
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d4

    const v2, 0xe49d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1308
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d5

    const v2, 0xe568

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1309
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d7

    const v2, 0xe565

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1310
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d8

    const v2, 0xe566

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1311
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d9

    const v2, 0xe567

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1312
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4da

    const v2, 0xe56f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1313
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4db

    const v2, 0xe51d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1314
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4dc

    const v2, 0xe55f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1315
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4cb

    const v2, 0xe564

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1316
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c6

    const v2, 0xe56a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1317
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ca

    const v2, 0xe574

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1318
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c8

    const v2, 0xe575

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1319
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c9

    const v2, 0xe576

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1320
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c7

    const v2, 0xe56c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1321
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4cc

    const v2, 0xe56d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1322
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d2

    const v2, 0xe56e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1323
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4cf

    const v2, 0xe570

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1324
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d0

    const v2, 0xe4a2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1325
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d1

    const v2, 0xeb0b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1327
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26be

    const v2, 0xe4ba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1328
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26f3

    const v2, 0xe599

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1329
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3be

    const v2, 0xe4b7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1330
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26bd

    const v2, 0xe4b6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1331
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3bf

    const v2, 0xeaac

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1332
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c0

    const v2, 0xe59a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1333
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c1

    const v2, 0xe4b9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1334
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c2

    const v2, 0xe4b8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1335
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c3

    const v2, 0xe46b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1336
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c4

    const v2, 0xeb41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1337
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c6

    const v2, 0xe5d3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1338
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c8

    const v2, 0xe4bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1339
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ca

    const v2, 0xeade

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1340
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f683

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1341
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f687

    const v2, 0xe5bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1342
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x24c2

    const v2, 0xe5bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1343
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f684

    const v2, 0xe4b0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1344
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f685

    const v2, 0xe4b0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1345
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f697

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1346
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f699

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1347
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f68c

    const v2, 0xe4af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1348
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f68f

    const v2, 0xe4a7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1349
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6a2

    const v2, 0xea82

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1350
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2708

    const v2, 0xe4b3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1351
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26f5

    const v2, 0xe4b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1352
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f689

    const v2, 0xeb6d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1353
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f680

    const v2, 0xe5c8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1354
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6a4

    const v2, 0xe4b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1355
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f695

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1356
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f69a

    const v2, 0xe4b2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1357
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f692

    const v2, 0xeadf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1358
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f691

    const v2, 0xeae0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1359
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f693

    const v2, 0xeae1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1360
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26fd

    const v2, 0xe571

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1361
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f17f

    const v2, 0xe4a6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1362
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6a5

    const v2, 0xe46a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1363
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6a7

    const v2, 0xe5d7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1364
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6a8

    const v2, 0xeb73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1365
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2668

    const v2, 0xe4bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1366
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26fa

    const v2, 0xe5d0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1368
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a1

    const v2, 0xe46d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1369
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a2

    const v2, 0xeae2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1370
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a3

    const v2, 0xeb42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1371
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a4

    const v2, 0xe503

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1372
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a5

    const v2, 0xe517

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1373
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a6

    const v2, 0xe517

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1374
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a7

    const v2, 0xe508

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1375
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a8

    const v2, 0xe59c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1376
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a9

    const v2, 0xeaf5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1377
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3aa

    const v2, 0xe59e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1378
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ab

    const v2, 0xe49e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1379
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ac

    const v2, 0xe4be

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1380
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ad

    const v2, 0xe59d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1381
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ae

    const v2, 0xe4c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1382
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f004

    const v2, 0xe5d1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1383
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3af

    const v2, 0xe4c5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1384
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b0

    const v2, 0xe46e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1385
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b1

    const v2, 0xeadd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1386
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b2

    const v2, 0xe4c8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1387
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b3

    const v2, 0xeb43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1388
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b4

    const v2, 0xeb6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1389
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f0cf

    const v2, 0xeb6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1390
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b5

    const v2, 0xe5be

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1391
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b6

    const v2, 0xe505

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1393
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b8

    const v2, 0xe506

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1394
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b9

    const v2, 0xeb40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1395
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ba

    const v2, 0xeadc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1396
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3bb

    const v2, 0xe507

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1397
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3bc

    const v2, 0xeacc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1399
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f7

    const v2, 0xe515

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1400
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f9

    const v2, 0xe57e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1401
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4fa

    const v2, 0xe502

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1402
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4fb

    const v2, 0xe5b9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1403
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4fc

    const v2, 0xe580

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1404
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f48b

    const v2, 0xe4eb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1405
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f48c

    const v2, 0xeb78

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1406
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f48d

    const v2, 0xe514

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1407
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f48e

    const v2, 0xe514

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1408
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f48f

    const v2, 0xe5ca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1409
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f490

    const v2, 0xea95

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1410
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f491

    const v2, 0xeada

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1411
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f492

    const v2, 0xe5bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1412
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f51e

    const v2, 0xea83

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1413
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0xa9

    const v2, 0xe558

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1414
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0xae

    const v2, 0xe559

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1415
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2122

    const v2, 0xe54e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1416
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2139

    const v2, 0xe533

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1430
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f51f

    const v2, 0xe52b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1431
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f6

    const v2, 0xea84

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1432
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f3

    const v2, 0xea90

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1433
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f4

    const v2, 0xea91

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1434
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f354

    const v2, 0xe4d6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1435
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f359

    const v2, 0xe4d5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1436
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f370

    const v2, 0xe4d0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1437
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f35c

    const v2, 0xe5b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1438
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f35e

    const v2, 0xeaaf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1439
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f373

    const v2, 0xe4d1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1440
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f366

    const v2, 0xeab0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1441
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f35f

    const v2, 0xeab1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1442
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f361

    const v2, 0xeab2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1443
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f358

    const v2, 0xeab3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1444
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f35a

    const v2, 0xeab4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1445
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f35d

    const v2, 0xeab5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1446
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f35b

    const v2, 0xeab6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1447
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f362

    const v2, 0xeab7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1448
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f363

    const v2, 0xeab8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1449
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f371

    const v2, 0xeabd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1450
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f372

    const v2, 0xeabe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1451
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f367

    const v2, 0xeaea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1452
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f356

    const v2, 0xe4c4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1453
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f365

    const v2, 0xe4ed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1454
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f360

    const v2, 0xeb3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1455
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f355

    const v2, 0xeb3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1456
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f357

    const v2, 0xeb3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1457
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f368

    const v2, 0xeb4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1458
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f369

    const v2, 0xeb4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1459
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f36a

    const v2, 0xeb4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1460
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f36b

    const v2, 0xeb4d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1461
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f36c

    const v2, 0xeb4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1462
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f36d

    const v2, 0xeb4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1463
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f36e

    const v2, 0xeb56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1464
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f36f

    const v2, 0xeb59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1465
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f364

    const v2, 0xeb70

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1466
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f374

    const v2, 0xe4ac

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1467
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2615

    const v2, 0xe597

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1469
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f378

    const v2, 0xe4c2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1470
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f37a

    const v2, 0xe4c3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1471
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f375

    const v2, 0xeaae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1472
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f376

    const v2, 0xea97

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1473
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f377

    const v2, 0xe4c1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1474
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f37b

    const v2, 0xea98

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1475
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f379

    const v2, 0xeb3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1476
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2197

    const v2, 0xe555

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1477
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2198

    const v2, 0xe54d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1478
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2196

    const v2, 0xe54c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1479
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2199

    const v2, 0xe556

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1480
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2934

    const v2, 0xeb2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1481
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2935

    const v2, 0xeb2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1482
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2194

    const v2, 0xeb7a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1483
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2195

    const v2, 0xeb7b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1484
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b06

    const v2, 0xe53f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1485
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b07

    const v2, 0xe540

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1486
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x27a1

    const v2, 0xe552

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1487
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b05

    const v2, 0xe553

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1488
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x25b6

    const v2, 0xe52e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1489
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x25c0

    const v2, 0xe52d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1490
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x23e9

    const v2, 0xe530

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1491
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x23ea

    const v2, 0xe52f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1492
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x23eb

    const v2, 0xe545

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1493
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x23ec

    const v2, 0xe544

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1494
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f53a

    const v2, 0xe55a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1495
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f53b

    const v2, 0xe55b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1496
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f53c

    const v2, 0xe543

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1497
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f53d

    const v2, 0xe542

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1498
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b55

    const v2, 0xeaad

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1499
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x274c

    const v2, 0xe550

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1500
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x274e

    const v2, 0xe551

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1501
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2757

    const v2, 0xe482

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1502
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2049

    const v2, 0xeb2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1503
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x203c

    const v2, 0xeb30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1504
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2753

    const v2, 0xe483

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1505
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2754

    const v2, 0xe483

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1506
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2755

    const v2, 0xe482

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1508
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x27b0

    const v2, 0xeb31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1510
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2764

    const v2, 0xe595

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1512
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f493

    const v2, 0xeb75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1513
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f494

    const v2, 0xe477

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1514
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f495

    const v2, 0xe478

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1515
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f496

    const v2, 0xeaa6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1516
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f497

    const v2, 0xeb75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1517
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f498

    const v2, 0xe4ea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1518
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f499

    const v2, 0xeaa7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1519
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f49a

    const v2, 0xeaa8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1520
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f49b

    const v2, 0xeaa9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1521
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f49c

    const v2, 0xeaaa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1522
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f49d

    const v2, 0xeb54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1523
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f49e

    const v2, 0xe5af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1524
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f49f

    const v2, 0xe595

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1525
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2665

    const v2, 0xeaa5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1526
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2660

    const v2, 0xe5a1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1527
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2666

    const v2, 0xe5a2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1528
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2663

    const v2, 0xe5a3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1529
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6ac

    const v2, 0xe47d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1530
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6ad

    const v2, 0xe47e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1531
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x267f

    const v2, 0xe47f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1532
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6a9

    const v2, 0xeb2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1533
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26a0

    const v2, 0xe481

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1534
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26d4

    const v2, 0xe484

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1535
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x267b

    const v2, 0xeb79

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1536
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6b2

    const v2, 0xe4ae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1537
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6b6

    const v2, 0xeb72

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1540
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6c0

    const v2, 0xe5d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1541
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6bb

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1542
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6bd

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1543
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6be

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1544
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6bc

    const v2, 0xeb18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1546
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6ab

    const v2, 0xe541

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1547
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2714

    const v2, 0xe557

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1548
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f191

    const v2, 0xe5ab

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1549
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f192

    const v2, 0xea85

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1550
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f193

    const v2, 0xe578

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1551
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f194

    const v2, 0xea88

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1552
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f195

    const v2, 0xe5b5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1554
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f197

    const v2, 0xe5ad

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1555
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f198

    const v2, 0xe4e8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1556
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f199

    const v2, 0xe50f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1557
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f19a

    const v2, 0xe5d2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1559
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f202

    const v2, 0xea87

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1561
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f233

    const v2, 0xea8a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1563
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f235

    const v2, 0xea89

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1568
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f239

    const v2, 0xea86

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1569
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f22f

    const v2, 0xea8b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1570
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f23a

    const v2, 0xea8c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1571
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x3299

    const v2, 0xe4f1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1572
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x3297

    const v2, 0xea99

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1573
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f250

    const v2, 0xe4f7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1574
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f251

    const v2, 0xeb01

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1575
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2795

    const v2, 0xe53c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1576
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2796

    const v2, 0xe53d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1577
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2716

    const v2, 0xe54f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1578
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2797

    const v2, 0xe554

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1580
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a1

    const v2, 0xe476

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1581
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a2

    const v2, 0xe4e5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1582
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a3

    const v2, 0xe47a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1583
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a4

    const v2, 0xe475

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1584
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a5

    const v2, 0xe5b0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1585
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a6

    const v2, 0xe5b1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1586
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a7

    const v2, 0xe4e6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1587
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a8

    const v2, 0xe4f4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1588
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a9

    const v2, 0xe4f5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1589
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4aa

    const v2, 0xe4e9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1590
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ab

    const v2, 0xeb5c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1591
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ac

    const v2, 0xe4fd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1592
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2728

    const v2, 0xeaab

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1593
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2734

    const v2, 0xe479

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1594
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2733

    const v2, 0xe53e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1595
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26aa

    const v2, 0xe53a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1596
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26ab

    const v2, 0xe53b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1597
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f534

    const v2, 0xe54a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1598
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f535

    const v2, 0xe54b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1599
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f532

    const v2, 0xe54b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1600
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f533

    const v2, 0xe54b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1601
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b50

    const v2, 0xe48b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1602
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b1c

    const v2, 0xe548

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1603
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b1b

    const v2, 0xe549

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1604
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x25ab

    const v2, 0xe531

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1605
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x25aa

    const v2, 0xe532

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1606
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x25fd

    const v2, 0xe534

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1607
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x25fe

    const v2, 0xe535

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1608
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x25fb

    const v2, 0xe538

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1609
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x25fc

    const v2, 0xe539

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1610
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f536

    const v2, 0xe546

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1611
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f537

    const v2, 0xe547

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1612
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f538

    const v2, 0xe536

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1613
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f539

    const v2, 0xe537

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1614
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2747

    const v2, 0xe46c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1615
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ae

    const v2, 0xe4f0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1616
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4af

    const v2, 0xe4f2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1617
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x21a9

    const v2, 0xe55d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1618
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x21aa

    const v2, 0xe55c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1619
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f503

    const v2, 0xeb0d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1620
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f50a

    const v2, 0xe511

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1621
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f50b

    const v2, 0xe584

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1622
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f50c

    const v2, 0xe589

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1623
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f50d

    const v2, 0xe518

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1624
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f50e

    const v2, 0xeb05

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1625
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f512

    const v2, 0xe51c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1626
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f513

    const v2, 0xe51c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1627
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f50f

    const v2, 0xeb0c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1628
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f510

    const v2, 0xeafc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1629
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f511

    const v2, 0xe519

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1630
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f514

    const v2, 0xe512

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1631
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2611

    const v2, 0xeb02

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1632
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f518

    const v2, 0xeb04

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1633
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f516

    const v2, 0xeb07

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1634
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f517

    const v2, 0xe58a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1635
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f519

    const v2, 0xeb06

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1640
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2001

    const v2, 0xe58c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1641
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2000

    const v2, 0xe58d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1642
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2005

    const v2, 0xe58e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1643
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2705

    const v2, 0xe55e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1644
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x270a

    const v2, 0xeb83

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1645
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x270b

    const v2, 0xe5a7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1646
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x270c

    const v2, 0xe5a6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1647
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f44a

    const v2, 0xe4f3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1648
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f44d

    const v2, 0xe4f9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1649
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x261d

    const v2, 0xe4f6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1650
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f446

    const v2, 0xea8d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1651
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f447

    const v2, 0xea8e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1652
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f448

    const v2, 0xe4ff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1653
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f449

    const v2, 0xe500

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1654
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f44b

    const v2, 0xead6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1655
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f44f

    const v2, 0xead3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1656
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f44c

    const v2, 0xead4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1657
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f44e

    const v2, 0xead5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1658
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f450

    const v2, 0xead6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1673
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f600

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1674
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f617

    const v2, 0xeacf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1675
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f619

    const v2, 0xeace

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1676
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f61b

    const v2, 0xe4e7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1678
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f634

    const v2, 0xeac4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1679
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f61f

    const v2, 0xeac2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1680
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f626

    const v2, 0xe474

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1681
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f627

    const v2, 0xe474

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1682
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f608

    const v2, 0xe4ef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1683
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f62e

    const v2, 0xeaca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1684
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f62c

    const v2, 0xeac3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1686
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f615

    const v2, 0xeac3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1687
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f62f

    const v2, 0xeac0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1689
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f607

    const v2, 0xe5bf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1690
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f611

    const v2, 0xeac9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1694
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ad

    const v2, 0xe4fd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1695
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f40b

    const v2, 0xe470

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1696
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f404

    const v2, 0xeb21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1698
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f400

    const v2, 0xe5c2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1699
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f403

    const v2, 0xeb21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1700
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f405

    const v2, 0xe5c0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1701
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f407

    const v2, 0xe4d7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1702
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f409

    const v2, 0xeb3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1704
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f413

    const v2, 0xeb23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1705
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f415

    const v2, 0xe4e1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1706
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f416

    const v2, 0xe4de

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1707
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f401

    const v2, 0xe5c2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1708
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f402

    const v2, 0xeb21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1710
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f42a

    const v2, 0xeb25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1712
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f408

    const v2, 0xe4db

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1713
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f332

    const v2, 0xe4c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1714
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f333

    const v2, 0xe4c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1719
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f312

    const v2, 0xe486

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1720
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f316

    const v2, 0xe5a9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1721
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f317

    const v2, 0xe5aa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1722
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f318

    const v2, 0xe486

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1723
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f31c

    const v2, 0xe489

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1724
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f30d

    const v2, 0xe5b3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1725
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f30e

    const v2, 0xe5b3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1726
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f509

    const v2, 0xe511

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1731
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6c1

    const v2, 0xe5d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1732
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6bf

    const v2, 0xe5d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1736
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ec

    const v2, 0xeb0a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1737
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ed

    const v2, 0xeb0a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1740
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c9

    const v2, 0xe4bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1741
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6b5

    const v2, 0xe4ae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1742
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6b4

    const v2, 0xe4ae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1743
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c7

    const v2, 0xe4d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1747
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e4

    const v2, 0xe5de

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1749
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f682

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1750
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f68a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1751
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f68e

    const v2, 0xe4af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1752
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f688

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1754
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f68d

    const v2, 0xe4af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1755
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f698

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1757
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f69b

    const v2, 0xe4b2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1758
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f694

    const v2, 0xeae1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1759
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f690

    const v2, 0xe4af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1761
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f69e

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1765
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6a6

    const v2, 0xe46a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1768
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f501

    const v2, 0xeb79

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1776
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f5

    const v2, 0xea91

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1782
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f567

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1783
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f55c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1784
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f55d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1785
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f55e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1786
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f55f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1787
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f560

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1788
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f561

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1789
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f562

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1790
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f563

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1791
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f564

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1792
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f565

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1793
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f566

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1795
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f508

    const v2, 0xe511

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1796
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f686

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1797
    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f68b

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1799
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static kddiEmojiToKddiUcs2(I)I
    .locals 3
    .param p0, "c"    # I

    .prologue
    .line 29
    sget-object v1, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 31
    .local v0, "unicode":I
    return v0
.end method

.method public static kddiUcs2ToKddiEmoji(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 45
    sget-object v2, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .line 46
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 47
    sget-object v2, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 50
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static kddiUcs2ToStandardEmoji(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 63
    const/4 v1, -0x1

    .line 65
    .local v1, "unicode":I
    sget-object v2, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .line 66
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 67
    sget-object v2, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 70
    :cond_0
    return v1
.end method

.method public static standardEmojiToKddiUcs2(I)I
    .locals 3
    .param p0, "c"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    sget-object v1, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 85
    .local v0, "unicode":I
    return v0
.end method
