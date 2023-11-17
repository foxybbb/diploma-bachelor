## Equation
```tex
\begin{equ}[!ht]
    \begin{equation}
        a=b+c
      \end{equation}
    \caption{Caption of the equation}
\end{equ}
```


##  Citatation 

```tex
\citep{progit}
```

## Table

```tex
 \begin{table}[]
    \caption{Title of the table}\label{tab:first}
    \centering
    \begin{tabular}{|l|l|l|l|l|}
    \hline
     &  &  &  &  \\ \hline
     &  &  &  &  \\ \hline
     &  &  &  &  \\ \hline
     &  &  &  &  \\ \hline
    \end{tabular}
 \end{table}
```

## Picture

```tex
\begin{figure}[H]
	\centering
	\includegraphics[width=0.5\textwidth]{PATH}
	\caption{CAPTION NAME}
\end{figure}
```

## Items 

```tex
\begin{itemize}
	\item x1;
	\item x2;
	\item x3;
	\item x4.
\end{itemize}
```

## Items Center 

```tex
\begin{center}
	\begin{minipage}[c]{0.5\linewidth}
		\begin{itemize}[label={}]
			\item $ \mathbf{e} $ - euler's number 2.71828
			\item Item 2
			\item Item 3
		\end{itemize}
	\end{minipage}
\end{center}
```

## Code

```tex
\begin{figure}[H]
	\centering
	\begin{minted}[tabsize=2,breaklines,fontsize=\small]{cpp}
        ## CODE HERE
	\end{minted}
	\caption{Event subscribtion example}
\end{figure}

```

